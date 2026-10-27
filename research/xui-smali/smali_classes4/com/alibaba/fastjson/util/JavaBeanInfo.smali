.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public kotlin:Z

.field public kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 21
    .param p5, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p8, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 57
    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 58
    iput-object v3, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 59
    iput-object v4, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object v5, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 62
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 64
    iput-object v6, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 65
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    .line 66
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "typeName":Ljava/lang/String;
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "typeKey":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    move-object v11, v0

    :goto_0
    iput-object v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 70
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 71
    iput-object v9, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 75
    :goto_1
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "orders":[Ljava/lang/String;
    array-length v12, v11

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v11

    :goto_2
    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 77
    .end local v9    # "typeName":Ljava/lang/String;
    .end local v10    # "typeKey":Ljava/lang/String;
    .end local v11    # "orders":[Ljava/lang/String;
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 79
    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 80
    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 83
    :goto_3
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 84
    iget-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v9, p8

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    iget-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 87
    .local v0, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 88
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 89
    .local v10, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    iget-object v12, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    aget-object v15, v12, v14

    .line 90
    .local v15, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v15    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 92
    :cond_4
    const/4 v11, 0x0

    .line 93
    .local v11, "i":I
    iget-object v12, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length v13, v12

    move v14, v11

    const/4 v11, 0x0

    .end local v11    # "i":I
    .local v14, "i":I
    :goto_5
    if-ge v11, v13, :cond_6

    aget-object v15, v12, v11

    .line 94
    .local v15, "item":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 95
    .local v16, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v16, :cond_5

    .line 96
    add-int/lit8 v17, v14, 0x1

    .local v17, "i":I
    aput-object v16, v0, v14

    .line 97
    .end local v14    # "i":I
    invoke-virtual {v10, v15}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v15    # "item":Ljava/lang/String;
    .end local v16    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    move/from16 v14, v17

    .end local v17    # "i":I
    .restart local v14    # "i":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 100
    :cond_6
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 101
    .local v12, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v13, v14, 0x1

    .local v13, "i":I
    aput-object v12, v0, v14

    .line 102
    .end local v12    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "i":I
    nop

    .line 100
    move v14, v13

    goto :goto_6

    .line 103
    .end local v10    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "i":I
    :cond_7
    goto :goto_7

    .line 104
    :cond_8
    iget-object v10, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v10, v12, v0, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 108
    :goto_7
    iget-object v10, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 109
    iget-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 111
    .end local v0    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v10, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_9
    move-object v10, v0

    iput-object v10, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 113
    if-eqz v3, :cond_a

    .line 114
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_8

    .line 115
    :cond_a
    if-eqz v5, :cond_b

    .line 116
    invoke-virtual/range {p5 .. p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iput v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_8

    .line 118
    :cond_b
    const/4 v11, 0x0

    iput v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 121
    :goto_8
    if-eqz v4, :cond_14

    .line 122
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    .line 126
    iget-boolean v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v0, :cond_10

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 129
    const/4 v12, 0x0

    :try_start_0
    new-array v0, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_9

    .line 130
    :catch_0
    move-exception v0

    .line 134
    :goto_9
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 135
    .local v0, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    move v11, v12

    .restart local v11    # "i":I
    :goto_a
    iget-object v13, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length v13, v13

    if-ge v11, v13, :cond_f

    array-length v13, v0

    if-ge v11, v13, :cond_f

    .line 136
    aget-object v13, v0, v11

    .line 137
    .local v13, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v14, 0x0

    .line 138
    .local v14, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v15, v13

    :goto_b
    if-ge v12, v15, :cond_d

    move-object/from16 v19, v0

    aget-object v0, v13, v12

    .line 139
    .local v0, "paramAnnotation":Ljava/lang/annotation/Annotation;
    .local v19, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    instance-of v2, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_c

    .line 140
    move-object v14, v0

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 141
    goto :goto_c

    .line 138
    .end local v0    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, p1

    goto :goto_b

    .line 144
    .end local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v0, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_d
    move-object/from16 v19, v0

    .end local v0    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_c
    if-eqz v14, :cond_e

    .line 145
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "fieldAnnotationName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 147
    iget-object v2, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object v0, v2, v11

    .line 135
    .end local v0    # "fieldAnnotationName":Ljava/lang/String;
    .end local v13    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v14    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, p1

    const/4 v12, 0x0

    goto :goto_a

    .line 151
    .end local v11    # "i":I
    .end local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_f
    goto :goto_f

    .line 153
    :cond_10
    iget-object v0, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v0, v0

    iget-object v2, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    if-eq v0, v2, :cond_11

    .line 154
    const/4 v0, 0x0

    .local v0, "match":Z
    goto :goto_e

    .line 156
    .end local v0    # "match":Z
    :cond_11
    const/4 v0, 0x1

    .line 157
    .restart local v0    # "match":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_d
    move/from16 v2, v18

    .end local v18    # "i":I
    .local v2, "i":I
    iget-object v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v11, v11

    if-ge v2, v11, :cond_13

    .line 158
    iget-object v11, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v11, v11, v2

    iget-object v12, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v12, v12, v2

    iget-object v12, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v11, v12, :cond_12

    .line 159
    const/4 v0, 0x0

    .line 160
    goto :goto_e

    .line 157
    :cond_12
    add-int/lit8 v18, v2, 0x1

    .end local v2    # "i":I
    .restart local v18    # "i":I
    goto :goto_d

    .line 165
    .end local v18    # "i":I
    :cond_13
    :goto_e
    if-nez v0, :cond_14

    .line 166
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 170
    .end local v0    # "match":Z
    :cond_14
    :goto_f
    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 188
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 189
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 191
    .local v2, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_0

    .line 193
    goto :goto_1

    .line 196
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    return v1

    .line 201
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v3

    .line 203
    .local v3, "result":I
    if-gez v3, :cond_2

    .line 204
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    return v1

    .line 207
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 188
    .end local v2    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "result":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 217
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .param p4, "compatibleWithJavaBean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 260
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 81
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .param p4, "compatibleWithJavaBean"    # Z
    .param p5, "jacksonCompatible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 270
    move/from16 v13, p5

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 271
    .local v12, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v12, :cond_0

    .line 272
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 273
    .local v0, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    .line 274
    nop

    .line 278
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v0, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object v11, v0

    goto :goto_0

    .end local v0    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_0
    move-object/from16 v11, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v11, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_0
    invoke-static {v14, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v10

    .line 280
    .local v10, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 281
    .local v9, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 282
    .local v8, "methods":[Ljava/lang/reflect/Method;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    .line 284
    .local v16, "genericInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v17

    .line 285
    .local v17, "kotlin":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 287
    .local v7, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v0, 0x0

    .line 288
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    if-eqz v17, :cond_2

    array-length v1, v7

    if-ne v1, v6, :cond_1

    goto :goto_2

    .line 296
    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    :goto_1
    move-object v5, v0

    goto :goto_3

    .line 289
    .end local v5    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    :goto_2
    if-nez v10, :cond_3

    .line 290
    invoke-static {v14, v7}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    .line 296
    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_3
    const/4 v0, 0x0

    .line 297
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v18, 0x0

    .line 298
    .local v18, "buildMethod":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    .line 300
    .local v19, "factoryMethod":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 302
    .local v4, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-eqz p3, :cond_6

    .line 303
    move-object v1, v14

    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 306
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v14, v15, v11, v4, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 303
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_4

    .line 309
    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v5, :cond_5

    .line 310
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 313
    :cond_5
    new-instance v20, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v6, 0x0

    move-object/from16 v1, v20

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v21, v4

    move-object v4, v5

    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v21, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v22, v11

    move-object v11, v5

    move-object v5, v6

    .end local v5    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v22, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v6, v19

    move-object/from16 v23, v7

    move-object/from16 v7, v18

    .end local v7    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v23, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v24, v8

    move-object v8, v12

    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .local v24, "methods":[Ljava/lang/reflect/Method;
    move-object v15, v9

    move-object/from16 v9, v21

    .end local v9    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v20

    .line 316
    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v22    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v23    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .restart local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v5    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v9    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v11, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_6
    move-object/from16 v21, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object v15, v9

    move-object/from16 v22, v11

    move-object v11, v5

    .end local v4    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v5    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v11, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v22    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v23    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v24    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v6

    :goto_6
    move/from16 v20, v1

    .line 317
    .local v20, "isInterfaceOrAbstract":Z
    if-nez v11, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v20, :cond_39

    .line 318
    :cond_a
    move-object/from16 v5, v23

    invoke-static {v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 320
    .end local v23    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v5, "constructors":[Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_15

    if-nez v20, :cond_15

    .line 321
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 323
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 325
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 326
    .local v1, "lookupParameterNames":[Ljava/lang/String;
    array-length v2, v4

    if-lez v2, :cond_14

    .line 327
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 328
    .local v3, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v2, "lookupParameterNames":[Ljava/lang/String;
    :goto_7
    array-length v6, v4

    if-ge v1, v6, :cond_14

    array-length v6, v3

    if-ge v1, v6, :cond_14

    .line 329
    aget-object v6, v3, v1

    .line 330
    .local v6, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v23, 0x0

    .line 331
    .local v23, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_c

    aget-object v9, v6, v8

    .line 332
    .local v9, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v30, v3

    instance-of v3, v9, Lcom/alibaba/fastjson/annotation/JSONField;

    .end local v3    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v30, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    if-eqz v3, :cond_b

    .line 333
    move-object/from16 v23, v9

    check-cast v23, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 334
    nop

    .line 338
    move-object/from16 v9, v23

    goto :goto_9

    .line 331
    .end local v9    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v30

    goto :goto_8

    .line 338
    .end local v30    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_c
    move-object/from16 v30, v3

    move-object/from16 v9, v23

    .end local v3    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v9, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v30    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_9
    aget-object v23, v4, v1

    .line 339
    .local v23, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v31, v3, v1

    .line 341
    .local v31, "fieldType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 342
    .local v3, "fieldName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 343
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/16 v32, 0x0

    .local v32, "serialzeFeatures":I
    const/16 v33, 0x0

    .line 344
    .local v33, "parserFeatures":I
    if-eqz v9, :cond_d

    .line 345
    move-object/from16 v34, v3

    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "fieldName":Ljava/lang/String;
    .local v34, "fieldName":Ljava/lang/String;
    invoke-static {v14, v3, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 346
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 347
    .end local v8    # "ordinal":I
    .local v3, "ordinal":I
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 348
    .end local v32    # "serialzeFeatures":I
    .local v8, "serialzeFeatures":I
    move/from16 v35, v3

    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    .end local v3    # "ordinal":I
    .local v35, "ordinal":I
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v3

    .line 349
    .end local v33    # "parserFeatures":I
    .local v3, "parserFeatures":I
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v32

    .line 352
    .end local v34    # "fieldName":Ljava/lang/String;
    .local v32, "fieldName":Ljava/lang/String;
    move/from16 v33, v3

    move-object/from16 v3, v32

    move/from16 v32, v8

    goto :goto_a

    .end local v35    # "ordinal":I
    .local v3, "fieldName":Ljava/lang/String;
    .local v8, "ordinal":I
    .local v32, "serialzeFeatures":I
    .restart local v33    # "parserFeatures":I
    :cond_d
    move-object/from16 v34, v3

    move/from16 v35, v8

    .end local v8    # "ordinal":I
    .restart local v35    # "ordinal":I
    :goto_a
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_e

    goto :goto_c

    .line 359
    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v34    # "fieldName":Ljava/lang/String;
    :cond_e
    :goto_b
    move-object/from16 v34, v3

    goto :goto_d

    .line 353
    .end local v34    # "fieldName":Ljava/lang/String;
    .restart local v3    # "fieldName":Ljava/lang/String;
    :cond_f
    :goto_c
    if-nez v2, :cond_10

    .line 354
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    .line 356
    :cond_10
    aget-object v3, v2, v1

    goto :goto_b

    .line 359
    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v34    # "fieldName":Ljava/lang/String;
    :goto_d
    if-nez v7, :cond_13

    .line 360
    if-nez v2, :cond_12

    .line 361
    if-eqz v17, :cond_11

    .line 362
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 364
    :cond_11
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    .line 368
    :cond_12
    :goto_e
    array-length v3, v2

    if-le v3, v1, :cond_13

    .line 369
    aget-object v3, v2, v1

    .line 370
    .local v3, "parameterName":Ljava/lang/String;
    invoke-static {v14, v3, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 374
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v3, "field":Ljava/lang/reflect/Field;
    move-object/from16 v37, v2

    move-object/from16 v36, v3

    goto :goto_f

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    :cond_13
    move-object/from16 v37, v2

    move-object/from16 v36, v7

    .end local v2    # "lookupParameterNames":[Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v36, "field":Ljava/lang/reflect/Field;
    .local v37, "lookupParameterNames":[Ljava/lang/String;
    :goto_f
    new-instance v38, Lcom/alibaba/fastjson/util/FieldInfo;

    move/from16 v39, v1

    move-object/from16 v1, v38

    .end local v1    # "i":I
    .local v39, "i":I
    move-object/from16 v2, v34

    move-object v3, v14

    move-object/from16 v40, v4

    move-object/from16 v4, v23

    .end local v4    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v40, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v8, v5

    move-object/from16 v5, v31

    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v8, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v26, v6

    const/4 v7, 0x1

    move-object/from16 v6, v36

    .end local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v26, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v41, v11

    move v11, v7

    move/from16 v7, v35

    .end local v11    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v41, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v11, v8

    move/from16 v8, v32

    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v27, v9

    move/from16 v9, v33

    .end local v9    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v27, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 376
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v9, v21

    invoke-static {v9, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 328
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v23    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v27    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v31    # "fieldType":Ljava/lang/reflect/Type;
    .end local v32    # "serialzeFeatures":I
    .end local v33    # "parserFeatures":I
    .end local v34    # "fieldName":Ljava/lang/String;
    .end local v35    # "ordinal":I
    .end local v36    # "field":Ljava/lang/reflect/Field;
    .local v9, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    add-int/lit8 v1, v39, 0x1

    .end local v39    # "i":I
    .local v1, "i":I
    move-object v5, v11

    move-object/from16 v3, v30

    move-object/from16 v2, v37

    move-object/from16 v4, v40

    move-object/from16 v11, v41

    const/4 v6, 0x1

    goto/16 :goto_7

    .line 381
    .end local v1    # "i":I
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v30    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v37    # "lookupParameterNames":[Ljava/lang/String;
    .end local v40    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v11, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_14
    move-object/from16 v41, v11

    move-object/from16 v9, v21

    move-object v11, v5

    .line 563
    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v45, v0

    move-object v13, v9

    move-object/from16 v48, v24

    const/16 v44, 0x1

    goto/16 :goto_25

    .line 381
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v11, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_15
    move-object/from16 v41, v11

    move-object/from16 v9, v21

    move-object v11, v5

    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v8, v24

    invoke-static {v14, v8, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "methods":[Ljava/lang/reflect/Method;
    move-object v7, v1

    .end local v19    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v7, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_20

    .line 382
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "lookupParameterNames":[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 386
    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v6

    if-lez v2, :cond_1f

    .line 387
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v19

    .line 388
    .local v19, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    move-object/from16 v21, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v21, "lookupParameterNames":[Ljava/lang/String;
    :goto_10
    move v5, v1

    .end local v1    # "i":I
    .local v5, "i":I
    array-length v1, v6

    if-ge v5, v1, :cond_1e

    .line 389
    aget-object v4, v19, v5

    .line 390
    .local v4, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .line 391
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v2, v4

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_17

    move-object/from16 v45, v0

    aget-object v0, v4, v3

    .line 392
    .local v0, "paramAnnotation":Ljava/lang/annotation/Annotation;
    .local v45, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v46, v1

    instance-of v1, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v46, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v1, :cond_16

    .line 393
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 394
    .end local v46    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    nop

    .line 397
    move-object v0, v1

    goto :goto_12

    .line 391
    .end local v0    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v46    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    goto :goto_11

    .line 397
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v46    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_17
    move-object/from16 v45, v0

    move-object/from16 v46, v1

    move-object/from16 v0, v46

    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v0, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_12
    if-nez v0, :cond_19

    if-eqz v13, :cond_18

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_13

    .line 398
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal json creator"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_19
    :goto_13
    const/4 v1, 0x0

    .line 402
    .local v1, "fieldName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ordinal":I
    const/4 v3, 0x0

    .local v3, "serialzeFeatures":I
    const/16 v23, 0x0

    .line 404
    .local v23, "parserFeatures":I
    if-eqz v0, :cond_1a

    .line 405
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 407
    move-object/from16 v47, v1

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    .end local v1    # "fieldName":Ljava/lang/String;
    .local v47, "fieldName":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    .line 408
    .end local v3    # "serialzeFeatures":I
    .local v1, "serialzeFeatures":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v3

    .line 411
    .end local v23    # "parserFeatures":I
    .local v3, "parserFeatures":I
    move/from16 v24, v1

    move/from16 v23, v2

    move/from16 v26, v3

    move-object/from16 v1, v47

    goto :goto_14

    .end local v47    # "fieldName":Ljava/lang/String;
    .local v1, "fieldName":Ljava/lang/String;
    .local v3, "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    :cond_1a
    move/from16 v24, v3

    move/from16 v26, v23

    move/from16 v23, v2

    .end local v2    # "ordinal":I
    .end local v3    # "serialzeFeatures":I
    .local v23, "ordinal":I
    .local v24, "serialzeFeatures":I
    .local v26, "parserFeatures":I
    :goto_14
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_16

    .line 418
    .end local v1    # "fieldName":Ljava/lang/String;
    .local v3, "fieldName":Ljava/lang/String;
    :cond_1b
    :goto_15
    move-object v3, v1

    goto :goto_17

    .line 412
    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v1    # "fieldName":Ljava/lang/String;
    :cond_1c
    :goto_16
    if-nez v21, :cond_1d

    .line 413
    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v21

    .line 415
    :cond_1d
    aget-object v1, v21, v5

    goto :goto_15

    .line 418
    .end local v1    # "fieldName":Ljava/lang/String;
    .restart local v3    # "fieldName":Ljava/lang/String;
    :goto_17
    aget-object v27, v6, v5

    .line 419
    .local v27, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v28, v1, v5

    .line 421
    .local v28, "fieldType":Ljava/lang/reflect/Type;
    invoke-static {v14, v3, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v29

    .line 422
    .local v29, "field":Ljava/lang/reflect/Field;
    new-instance v30, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v1, v30

    move-object v2, v3

    move-object/from16 v31, v3

    move-object v3, v14

    .end local v3    # "fieldName":Ljava/lang/String;
    .local v31, "fieldName":Ljava/lang/String;
    move-object/from16 v32, v4

    move-object/from16 v4, v27

    .end local v4    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v32, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move/from16 v33, v5

    move-object/from16 v5, v28

    .end local v5    # "i":I
    .local v33, "i":I
    move-object/from16 v34, v6

    move-object/from16 v6, v29

    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v34, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v35, v7

    move/from16 v7, v23

    .end local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v35, "factoryMethod":Ljava/lang/reflect/Method;
    move-object/from16 v48, v8

    move/from16 v8, v24

    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .local v48, "methods":[Ljava/lang/reflect/Method;
    move-object v13, v9

    move/from16 v9, v26

    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 424
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v13, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 388
    .end local v0    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v23    # "ordinal":I
    .end local v24    # "serialzeFeatures":I
    .end local v26    # "parserFeatures":I
    .end local v27    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "fieldType":Ljava/lang/reflect/Type;
    .end local v29    # "field":Ljava/lang/reflect/Field;
    .end local v31    # "fieldName":Ljava/lang/String;
    .end local v32    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v1, v33, 0x1

    .end local v33    # "i":I
    .local v1, "i":I
    move-object v9, v13

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    move-object/from16 v0, v45

    move-object/from16 v8, v48

    move/from16 v13, p5

    goto/16 :goto_10

    .line 427
    .end local v1    # "i":I
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v34    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v48    # "methods":[Ljava/lang/reflect/Method;
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_1e
    move-object/from16 v45, v0

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v48, v8

    move-object v13, v9

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v34    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v48    # "methods":[Ljava/lang/reflect/Method;
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v6, v35

    move-object v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0

    .line 429
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v21    # "lookupParameterNames":[Ljava/lang/String;
    .end local v34    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v48    # "methods":[Ljava/lang/reflect/Method;
    .restart local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_1f
    move-object/from16 v45, v0

    move-object/from16 v35, v7

    move-object/from16 v48, v8

    move-object v13, v9

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v48    # "methods":[Ljava/lang/reflect/Method;
    goto/16 :goto_23

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v48    # "methods":[Ljava/lang/reflect/Method;
    .restart local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_20
    move-object/from16 v45, v0

    move-object/from16 v35, v7

    move-object/from16 v48, v8

    move-object v13, v9

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v48    # "methods":[Ljava/lang/reflect/Method;
    if-nez v20, :cond_38

    .line 430
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 433
    .local v1, "paramNames":[Ljava/lang/String;
    if-eqz v17, :cond_21

    array-length v2, v11

    if-lez v2, :cond_21

    .line 434
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 436
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v2, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 500
    move-object v8, v1

    move-object v7, v2

    .end local v1    # "paramNames":[Ljava/lang/String;
    .end local v2    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v7, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v8, "paramNames":[Ljava/lang/String;
    :goto_18
    const/16 v44, 0x1

    goto/16 :goto_1d

    .line 439
    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "paramNames":[Ljava/lang/String;
    .restart local v1    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_21
    array-length v2, v11

    move-object v3, v1

    const/4 v1, 0x0

    .end local v1    # "paramNames":[Ljava/lang/String;
    .local v3, "paramNames":[Ljava/lang/String;
    :goto_19
    if-ge v1, v2, :cond_2d

    aget-object v4, v11, v1

    .line 440
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 442
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v6, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 443
    array-length v6, v5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_23

    const/4 v7, 0x0

    aget-object v6, v5, v7

    const-class v9, Ljava/lang/String;

    if-ne v6, v9, :cond_23

    const/4 v6, 0x1

    aget-object v9, v5, v6

    const-class v8, Ljava/lang/String;

    if-ne v9, v8, :cond_22

    .line 444
    move-object v1, v4

    .line 445
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 446
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    .line 447
    .end local v3    # "paramNames":[Ljava/lang/String;
    .local v2, "paramNames":[Ljava/lang/String;
    nop

    .line 500
    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "paramNames":[Ljava/lang/String;
    :goto_1a
    move-object v7, v1

    move-object v8, v2

    goto :goto_18

    .line 439
    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "paramNames":[Ljava/lang/String;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_22
    move/from16 v44, v6

    goto/16 :goto_1c

    :cond_23
    const/16 v44, 0x1

    goto/16 :goto_1c

    .line 453
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_24
    const/4 v7, 0x0

    const-string v6, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 454
    array-length v6, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_23

    aget-object v6, v5, v7

    const-class v9, Ljava/lang/Object;

    if-ne v6, v9, :cond_23

    const/4 v6, 0x1

    aget-object v9, v5, v6

    const-class v8, Ljava/lang/Object;

    if-ne v9, v8, :cond_22

    const/4 v8, 0x2

    aget-object v9, v5, v8

    const-class v8, Ljava/util/Collection;

    if-ne v9, v8, :cond_22

    .line 458
    move-object v1, v4

    .line 459
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 460
    const-string v2, "principal"

    const-string v6, "credentials"

    const-string v8, "authorities"

    filled-new-array {v2, v6, v8}, [Ljava/lang/String;

    move-result-object v2

    .line 461
    .end local v3    # "paramNames":[Ljava/lang/String;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    goto :goto_1a

    .line 467
    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "paramNames":[Ljava/lang/String;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_25
    const-string v6, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 468
    array-length v6, v5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_26

    aget-object v6, v5, v7

    const-class v8, Ljava/lang/String;

    if-ne v6, v8, :cond_23

    .line 470
    move-object v1, v4

    .line 471
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v2, "authority"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 472
    .end local v3    # "paramNames":[Ljava/lang/String;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    goto :goto_1a

    .line 439
    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_26
    move/from16 v44, v8

    goto :goto_1c

    .line 481
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_27
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    const/16 v44, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_28

    move/from16 v6, v44

    goto :goto_1b

    :cond_28
    move v6, v7

    .line 482
    .local v6, "is_public":Z
    :goto_1b
    if-nez v6, :cond_29

    .line 483
    goto :goto_1c

    .line 485
    :cond_29
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v8

    .line 486
    .local v8, "lookupParameterNames":[Ljava/lang/String;
    if-eqz v8, :cond_2c

    array-length v9, v8

    if-nez v9, :cond_2a

    .line 487
    goto :goto_1c

    .line 490
    :cond_2a
    if-eqz v45, :cond_2b

    if-eqz v3, :cond_2b

    array-length v9, v8

    array-length v7, v3

    if-gt v9, v7, :cond_2b

    .line 492
    goto :goto_1c

    .line 495
    :cond_2b
    move-object v3, v8

    .line 496
    nop

    .line 439
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "is_public":Z
    .end local v8    # "lookupParameterNames":[Ljava/lang/String;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v45, v4

    .end local v4    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19

    .line 500
    :cond_2d
    const/16 v44, 0x1

    move-object v8, v3

    move-object/from16 v7, v45

    .end local v3    # "paramNames":[Ljava/lang/String;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v8, "paramNames":[Ljava/lang/String;
    :goto_1d
    const/4 v1, 0x0

    .line 501
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v8, :cond_2e

    .line 502
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 505
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2e
    move-object v6, v1

    if-eqz v8, :cond_37

    array-length v1, v6

    array-length v2, v8

    if-ne v1, v2, :cond_37

    .line 507
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v19

    .line 508
    .restart local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    move v5, v1

    .end local v1    # "i":I
    .local v5, "i":I
    array-length v1, v6

    if-ge v5, v1, :cond_35

    .line 509
    aget-object v4, v19, v5

    .line 510
    .local v4, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    aget-object v1, v8, v5

    .line 512
    .local v1, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 513
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v3, v4

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v3, :cond_30

    move-object/from16 v49, v2

    aget-object v2, v4, v9

    .line 514
    .local v2, "paramAnnotation":Ljava/lang/annotation/Annotation;
    .local v49, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move/from16 v50, v3

    instance-of v3, v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_2f

    .line 515
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 516
    .end local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    nop

    .line 520
    move-object/from16 v49, v3

    goto :goto_20

    .line 513
    .end local v2    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v3    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v49

    move/from16 v3, v50

    goto :goto_1f

    .line 520
    .end local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_30
    move-object/from16 v49, v2

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_20
    aget-object v21, v6, v5

    .line 521
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v23, v2, v5

    .line 522
    .local v23, "fieldType":Ljava/lang/reflect/Type;
    invoke-static {v14, v1, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 523
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_31

    .line 524
    if-nez v49, :cond_31

    .line 525
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 529
    .end local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_31
    move-object/from16 v2, v49

    if-nez v2, :cond_33

    .line 530
    const/4 v9, 0x0

    .line 531
    .local v9, "ordinal":I
    const/16 v24, 0x0

    .line 533
    .restart local v24    # "serialzeFeatures":I
    move-object/from16 v51, v3

    const-string v3, "org.springframework.security.core.userdetails.User"

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .local v51, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "password"

    .line 534
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 535
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    goto :goto_21

    .line 537
    :cond_32
    const/4 v3, 0x0

    .line 546
    .end local v1    # "paramName":Ljava/lang/String;
    .local v0, "paramName":Ljava/lang/String;
    .local v3, "parserFeatures":I
    .local v9, "parserFeatures":I
    .local v24, "ordinal":I
    .local v52, "className":Ljava/lang/String;
    .local v53, "serialzeFeatures":I
    :goto_21
    move-object/from16 v52, v0

    move-object v0, v1

    move/from16 v53, v24

    move/from16 v24, v9

    move v9, v3

    goto :goto_22

    .line 540
    .end local v9    # "parserFeatures":I
    .end local v24    # "ordinal":I
    .end local v51    # "field":Ljava/lang/reflect/Field;
    .end local v52    # "className":Ljava/lang/String;
    .end local v53    # "serialzeFeatures":I
    .local v0, "className":Ljava/lang/String;
    .restart local v1    # "paramName":Ljava/lang/String;
    .local v3, "field":Ljava/lang/reflect/Field;
    :cond_33
    move-object/from16 v51, v3

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v51    # "field":Ljava/lang/reflect/Field;
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "nameAnnotated":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_34

    .line 542
    move-object v1, v3

    .line 544
    :cond_34
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 545
    .local v9, "ordinal":I
    move-object/from16 v52, v0

    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    .end local v0    # "className":Ljava/lang/String;
    .restart local v52    # "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    .line 546
    .local v0, "serialzeFeatures":I
    move/from16 v53, v0

    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    .end local v0    # "serialzeFeatures":I
    .restart local v53    # "serialzeFeatures":I
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    .end local v3    # "nameAnnotated":Ljava/lang/String;
    move/from16 v24, v9

    move v9, v0

    move-object v0, v1

    .line 548
    .end local v1    # "paramName":Ljava/lang/String;
    .local v0, "paramName":Ljava/lang/String;
    .local v9, "parserFeatures":I
    .restart local v24    # "ordinal":I
    :goto_22
    new-instance v26, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v1, v26

    move-object/from16 v49, v2

    move-object v2, v0

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v27, v51

    move-object v3, v14

    .end local v51    # "field":Ljava/lang/reflect/Field;
    .local v27, "field":Ljava/lang/reflect/Field;
    move-object/from16 v28, v4

    move-object/from16 v4, v21

    .end local v4    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v28, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move/from16 v29, v5

    move-object/from16 v5, v23

    .end local v5    # "i":I
    .local v29, "i":I
    move-object/from16 v30, v6

    move-object/from16 v6, v27

    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v30, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v45, v7

    move/from16 v7, v24

    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v31, v8

    move/from16 v8, v53

    .end local v8    # "paramNames":[Ljava/lang/String;
    .local v31, "paramNames":[Ljava/lang/String;
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 550
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v13, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 508
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "parserFeatures":I
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldType":Ljava/lang/reflect/Type;
    .end local v24    # "ordinal":I
    .end local v27    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v49    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v53    # "serialzeFeatures":I
    add-int/lit8 v1, v29, 0x1

    .end local v29    # "i":I
    .local v1, "i":I
    move-object/from16 v6, v30

    move-object/from16 v8, v31

    move-object/from16 v7, v45

    move-object/from16 v0, v52

    goto/16 :goto_1e

    .line 553
    .end local v1    # "i":I
    .end local v30    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v31    # "paramNames":[Ljava/lang/String;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v52    # "className":Ljava/lang/String;
    .local v0, "className":Ljava/lang/String;
    .restart local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "paramNames":[Ljava/lang/String;
    :cond_35
    move-object/from16 v52, v0

    move-object/from16 v30, v6

    move-object/from16 v45, v7

    move-object/from16 v31, v8

    .end local v0    # "className":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "paramNames":[Ljava/lang/String;
    .restart local v30    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v31    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v52    # "className":Ljava/lang/String;
    if-nez v17, :cond_36

    .line 554
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 555
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v5, v45

    move-object v8, v12

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0

    .line 557
    .end local v19    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_36
    goto :goto_24

    .line 558
    .end local v30    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v31    # "paramNames":[Ljava/lang/String;
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v52    # "className":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "paramNames":[Ljava/lang/String;
    :cond_37
    move-object/from16 v52, v0

    move-object/from16 v30, v6

    move-object/from16 v45, v7

    move-object/from16 v31, v8

    .end local v0    # "className":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "paramNames":[Ljava/lang/String;
    .restart local v30    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v31    # "paramNames":[Ljava/lang/String;
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v52    # "className":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    .end local v30    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v31    # "paramNames":[Ljava/lang/String;
    .end local v52    # "className":Ljava/lang/String;
    :cond_38
    :goto_23
    const/16 v44, 0x1

    .end local v35    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v19, "factoryMethod":Ljava/lang/reflect/Method;
    :goto_24
    move-object/from16 v19, v35

    goto :goto_25

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v48    # "methods":[Ljava/lang/reflect/Method;
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v21, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v23, "constructors":[Ljava/lang/reflect/Constructor;
    .local v24, "methods":[Ljava/lang/reflect/Method;
    :cond_39
    move/from16 v44, v6

    move-object/from16 v41, v11

    move-object/from16 v13, v21

    move-object/from16 v11, v23

    move-object/from16 v48, v24

    move-object/from16 v45, v0

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v21    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v23    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v24    # "methods":[Ljava/lang/reflect/Method;
    .local v11, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v45    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v48    # "methods":[Ljava/lang/reflect/Method;
    :goto_25
    if-eqz v41, :cond_3a

    .line 564
    move-object/from16 v9, v41

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_26

    .line 567
    :cond_3a
    move-object/from16 v9, v41

    .end local v41    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v9, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_26
    if-eqz v10, :cond_50

    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, "withPrefix":Ljava/lang/String;
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v10, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 571
    .local v8, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    if-eqz v8, :cond_3b

    .line 572
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    .line 575
    :cond_3b
    if-nez v0, :cond_3c

    .line 576
    const-string v0, "with"

    .line 579
    .end local v0    # "withPrefix":Ljava/lang/String;
    .local v7, "withPrefix":Ljava/lang/String;
    :cond_3c
    move-object v7, v0

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v6, :cond_49

    aget-object v4, v0, v5

    .line 580
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 581
    nop

    .line 579
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "withPrefix":Ljava/lang/String;
    .end local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .local v28, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v30, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .local v31, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v35, "withPrefix":Ljava/lang/String;
    .local v57, "declaredFields":[Ljava/lang/reflect/Field;
    .local v59, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v60, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_28
    move-object/from16 v54, v0

    :goto_29
    move/from16 v27, v5

    move/from16 v25, v6

    move-object/from16 v35, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v59, v10

    move-object/from16 v28, v12

    move-object/from16 v57, v15

    move-object/from16 v60, v22

    move-object/from16 v15, p1

    move-object/from16 v22, v11

    goto/16 :goto_2e

    .line 584
    .end local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v35    # "withPrefix":Ljava/lang/String;
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "withPrefix":Ljava/lang/String;
    .restart local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 585
    goto :goto_28

    .line 588
    :cond_3e
    const/4 v1, 0x0

    .local v1, "ordinal":I
    const/4 v2, 0x0

    .local v2, "serialzeFeatures":I
    const/4 v3, 0x0

    .line 590
    .local v3, "parserFeatures":I
    move-object/from16 v54, v0

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 592
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_3f

    .line 593
    invoke-static {v14, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 596
    :cond_3f
    if-eqz v0, :cond_42

    .line 597
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v21

    if-nez v21, :cond_40

    .line 598
    goto :goto_29

    .line 601
    :cond_40
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v21

    .line 602
    .end local v1    # "ordinal":I
    .local v21, "ordinal":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 603
    .end local v2    # "serialzeFeatures":I
    .local v23, "serialzeFeatures":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v24

    .line 605
    .end local v3    # "parserFeatures":I
    .local v24, "parserFeatures":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_41

    .line 606
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v26

    .line 607
    .local v26, "propertyName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v1, v3

    move-object/from16 v2, v26

    move-object/from16 v55, v3

    move-object v3, v4

    move-object/from16 v56, v4

    move-object/from16 v4, v27

    .end local v4    # "method":Ljava/lang/reflect/Method;
    .local v56, "method":Ljava/lang/reflect/Method;
    move/from16 v27, v5

    move-object v5, v14

    move/from16 v25, v6

    move-object/from16 v57, v15

    move-object/from16 v15, p1

    move-object v6, v15

    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v58, v7

    move/from16 v7, v21

    .end local v7    # "withPrefix":Ljava/lang/String;
    .local v58, "withPrefix":Ljava/lang/String;
    move-object/from16 v30, v8

    move/from16 v8, v23

    .end local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    move-object/from16 v31, v9

    move/from16 v9, v24

    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v59, v10

    move-object v10, v0

    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v60, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v28

    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v28, v12

    move-object/from16 v12, v29

    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object v15, v13

    move-object/from16 v13, v16

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, v55

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 609
    nop

    .line 579
    move-object v13, v15

    move-object/from16 v35, v58

    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v21    # "ordinal":I
    .end local v23    # "serialzeFeatures":I
    .end local v24    # "parserFeatures":I
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v56    # "method":Ljava/lang/reflect/Method;
    .end local v58    # "withPrefix":Ljava/lang/String;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "withPrefix":Ljava/lang/String;
    :goto_2a
    move-object/from16 v15, p1

    goto/16 :goto_2e

    .line 613
    .end local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v35    # "withPrefix":Ljava/lang/String;
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "withPrefix":Ljava/lang/String;
    .restart local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v21    # "ordinal":I
    .local v22, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v23    # "serialzeFeatures":I
    .restart local v24    # "parserFeatures":I
    :cond_41
    move-object/from16 v56, v4

    move/from16 v27, v5

    move/from16 v25, v6

    move-object/from16 v58, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v59, v10

    move-object/from16 v28, v12

    move-object/from16 v57, v15

    move-object/from16 v60, v22

    move-object/from16 v22, v11

    move-object v15, v13

    goto :goto_2b

    .end local v21    # "ordinal":I
    .end local v23    # "serialzeFeatures":I
    .end local v24    # "parserFeatures":I
    .restart local v1    # "ordinal":I
    .restart local v2    # "serialzeFeatures":I
    .restart local v3    # "parserFeatures":I
    :cond_42
    move-object/from16 v56, v4

    move/from16 v27, v5

    move/from16 v25, v6

    move-object/from16 v58, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v59, v10

    move-object/from16 v28, v12

    move-object/from16 v57, v15

    move-object/from16 v60, v22

    move-object/from16 v22, v11

    move-object v15, v13

    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "ordinal":I
    .end local v2    # "serialzeFeatures":I
    .end local v3    # "parserFeatures":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "withPrefix":Ljava/lang/String;
    .end local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v21    # "ordinal":I
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v23    # "serialzeFeatures":I
    .restart local v24    # "parserFeatures":I
    .restart local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v56    # "method":Ljava/lang/reflect/Method;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v58    # "withPrefix":Ljava/lang/String;
    .restart local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_2b
    move-object/from16 v13, v56

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 615
    .end local v56    # "method":Ljava/lang/reflect/Method;
    .local v12, "methodName":Ljava/lang/String;
    .local v13, "method":Ljava/lang/reflect/Method;
    const-string v1, "set"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x3

    if-le v1, v11, :cond_44

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "properNameBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v10, v58

    goto :goto_2d

    .line 618
    .end local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_43
    const/4 v11, 0x3

    :cond_44
    move-object/from16 v10, v58

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .end local v58    # "withPrefix":Ljava/lang/String;
    .local v10, "withPrefix":Ljava/lang/String;
    if-nez v1, :cond_45

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    goto :goto_2d

    .line 621
    .end local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_45
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 622
    nop

    .line 579
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v10    # "withPrefix":Ljava/lang/String;
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v21    # "ordinal":I
    .end local v23    # "serialzeFeatures":I
    .end local v24    # "parserFeatures":I
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "withPrefix":Ljava/lang/String;
    :goto_2c
    move-object/from16 v35, v10

    move-object v13, v15

    goto :goto_2a

    .line 625
    .end local v35    # "withPrefix":Ljava/lang/String;
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v10    # "withPrefix":Ljava/lang/String;
    .restart local v12    # "methodName":Ljava/lang/String;
    .local v13, "method":Ljava/lang/reflect/Method;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v21    # "ordinal":I
    .restart local v23    # "serialzeFeatures":I
    .restart local v24    # "parserFeatures":I
    :cond_46
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_47

    .line 626
    goto :goto_2c

    .line 629
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    :goto_2d
    move-object v9, v1

    .line 633
    .end local v1    # "properNameBuilder":Ljava/lang/StringBuilder;
    .local v9, "properNameBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 634
    .local v7, "c0":C
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_48

    .line 635
    goto :goto_2c

    .line 638
    :cond_48
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v9, v8, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 640
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 642
    .restart local v26    # "propertyName":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object v1, v6

    move-object/from16 v2, v26

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v62, v6

    move-object/from16 v61, v15

    move-object/from16 v15, p1

    move-object v6, v15

    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v61, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v33, v7

    move/from16 v7, v21

    .end local v7    # "c0":C
    .local v33, "c0":C
    move/from16 v8, v23

    move-object/from16 v34, v9

    move/from16 v9, v24

    .end local v9    # "properNameBuilder":Ljava/lang/StringBuilder;
    .local v34, "properNameBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v35, v10

    move-object v10, v0

    .end local v10    # "withPrefix":Ljava/lang/String;
    .restart local v35    # "withPrefix":Ljava/lang/String;
    move-object/from16 v11, v29

    move-object/from16 v29, v12

    move-object/from16 v12, v32

    .end local v12    # "methodName":Ljava/lang/String;
    .local v29, "methodName":Ljava/lang/String;
    move-object/from16 v32, v13

    move-object/from16 v13, v16

    .end local v13    # "method":Ljava/lang/reflect/Method;
    .local v32, "method":Ljava/lang/reflect/Method;
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v13, v61

    move-object/from16 v1, v62

    invoke-static {v13, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 579
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v21    # "ordinal":I
    .end local v23    # "serialzeFeatures":I
    .end local v24    # "parserFeatures":I
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v29    # "methodName":Ljava/lang/String;
    .end local v32    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "c0":C
    .end local v34    # "properNameBuilder":Ljava/lang/StringBuilder;
    .end local v61    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_2e
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v11, v22

    move/from16 v6, v25

    move-object/from16 v12, v28

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v7, v35

    move-object/from16 v0, v54

    move-object/from16 v15, v57

    move-object/from16 v10, v59

    move-object/from16 v22, v60

    const/16 v44, 0x1

    goto/16 :goto_27

    .line 646
    .end local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v35    # "withPrefix":Ljava/lang/String;
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v7, "withPrefix":Ljava/lang/String;
    .restart local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .local v9, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v10, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v12, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_49
    move-object/from16 v35, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v59, v10

    move-object/from16 v28, v12

    move-object/from16 v57, v15

    move-object/from16 v60, v22

    move-object/from16 v15, p1

    move-object/from16 v22, v11

    .end local v7    # "withPrefix":Ljava/lang/String;
    .end local v8    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v12    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v35    # "withPrefix":Ljava/lang/String;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v12, v59

    if-eqz v12, :cond_4f

    .line 647
    .end local v59    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v12, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 649
    .local v1, "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    const/4 v0, 0x0

    .line 650
    .local v0, "buildMethodName":Ljava/lang/String;
    if-eqz v1, :cond_4a

    .line 651
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_4a
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_30

    .line 659
    .end local v0    # "buildMethodName":Ljava/lang/String;
    .local v2, "buildMethodName":Ljava/lang/String;
    :cond_4b
    :goto_2f
    move-object v2, v0

    goto :goto_31

    .line 655
    .end local v2    # "buildMethodName":Ljava/lang/String;
    .restart local v0    # "buildMethodName":Ljava/lang/String;
    :cond_4c
    :goto_30
    const-string v0, "build"

    goto :goto_2f

    .line 659
    .end local v0    # "buildMethodName":Ljava/lang/String;
    .restart local v2    # "buildMethodName":Ljava/lang/String;
    :goto_31
    const/4 v11, 0x0

    :try_start_0
    new-array v0, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v0

    .line 664
    :goto_32
    goto :goto_33

    .line 662
    :catch_0
    move-exception v0

    goto :goto_33

    .line 660
    :catch_1
    move-exception v0

    goto :goto_32

    .line 666
    :goto_33
    if-nez v18, :cond_4d

    .line 668
    :try_start_1
    const-string v0, "create"

    new-array v3, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v0

    .line 673
    goto :goto_35

    .line 671
    :catch_2
    move-exception v0

    goto :goto_34

    .line 669
    :catch_3
    move-exception v0

    .line 673
    nop

    .line 676
    :cond_4d
    :goto_34
    move-object/from16 v0, v18

    .end local v18    # "buildMethod":Ljava/lang/reflect/Method;
    .local v0, "buildMethod":Ljava/lang/reflect/Method;
    :goto_35
    if-eqz v0, :cond_4e

    .line 680
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .end local v1    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v2    # "buildMethodName":Ljava/lang/String;
    .end local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v35    # "withPrefix":Ljava/lang/String;
    goto :goto_37

    .line 677
    .restart local v1    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v2    # "buildMethodName":Ljava/lang/String;
    .restart local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v35    # "withPrefix":Ljava/lang/String;
    :cond_4e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "buildMethod not found."

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 684
    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v1    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v2    # "buildMethodName":Ljava/lang/String;
    .end local v30    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v35    # "withPrefix":Ljava/lang/String;
    .restart local v18    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_4f
    const/4 v11, 0x0

    goto :goto_36

    .end local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v12, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_50
    move-object/from16 v31, v9

    move-object/from16 v28, v12

    move-object/from16 v57, v15

    move-object/from16 v60, v22

    move-object/from16 v15, p1

    move-object v12, v10

    move-object/from16 v22, v11

    const/4 v11, 0x0

    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v15    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v12, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v28    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v31    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_36
    move-object/from16 v0, v18

    .end local v18    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    :goto_37
    move-object/from16 v10, v48

    array-length v9, v10

    .end local v48    # "methods":[Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    move v8, v11

    :goto_38
    const/4 v7, 0x4

    if-ge v8, v9, :cond_77

    aget-object v6, v10, v8

    .line 685
    .local v6, "method":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    .local v18, "ordinal":I
    const/16 v21, 0x0

    .local v21, "serialzeFeatures":I
    const/16 v23, 0x0

    .line 686
    .local v23, "parserFeatures":I
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 689
    nop

    .line 684
    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v26, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v41, "methods":[Ljava/lang/reflect/Method;
    .local v72, "declaredFields":[Ljava/lang/reflect/Field;
    .local v73, "buildMethod":Ljava/lang/reflect/Method;
    .local v74, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_39
    move-object/from16 v73, v0

    move/from16 v25, v8

    move/from16 v32, v9

    move-object/from16 v41, v10

    move/from16 v39, v11

    move-object/from16 v26, v12

    move-object v15, v13

    move-object/from16 v72, v57

    move-object/from16 v74, v60

    const/16 v29, 0x2

    :goto_3a
    const/16 v38, 0x1

    goto/16 :goto_4d

    .line 693
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_51
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 694
    .local v4, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 695
    goto :goto_39

    .line 698
    :cond_52
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_53

    .line 699
    goto :goto_39

    .line 702
    :cond_53
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 704
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v3

    if-eqz v1, :cond_76

    array-length v1, v3

    const/4 v2, 0x2

    if-le v1, v2, :cond_54

    .line 705
    nop

    .line 684
    move-object/from16 v73, v0

    move/from16 v29, v2

    move/from16 v25, v8

    move/from16 v32, v9

    move-object/from16 v41, v10

    move/from16 v39, v11

    move-object/from16 v26, v12

    move-object v15, v13

    move-object/from16 v72, v57

    move-object/from16 v74, v60

    goto :goto_3a

    .line 708
    :cond_54
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 709
    .local v24, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v24, :cond_56

    array-length v1, v3

    if-ne v1, v2, :cond_56

    aget-object v1, v3, v11

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_55

    const/4 v2, 0x1

    aget-object v1, v3, v2

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_55

    .line 713
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const-string v2, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v1, v7

    const/16 v29, 0x2

    move-object/from16 v63, v3

    move-object v3, v6

    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v63, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v30, v4

    move-object/from16 v4, v25

    .end local v4    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v30, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v64, v5

    move-object v5, v14

    .end local v5    # "methodName":Ljava/lang/String;
    .local v64, "methodName":Ljava/lang/String;
    move-object/from16 v65, v6

    move-object v6, v15

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .local v65, "method":Ljava/lang/reflect/Method;
    move-object/from16 v66, v7

    move/from16 v7, v18

    move/from16 v25, v8

    move/from16 v8, v21

    move/from16 v32, v9

    move/from16 v9, v23

    move-object/from16 v67, v10

    move-object/from16 v10, v24

    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .local v67, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v11, v26

    move-object/from16 v26, v12

    move-object/from16 v12, v27

    .end local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v15, v13

    move-object/from16 v13, v16

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, v66

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 715
    nop

    .line 684
    move-object/from16 v73, v0

    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v63    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v64    # "methodName":Ljava/lang/String;
    .end local v65    # "method":Ljava/lang/reflect/Method;
    .end local v67    # "methods":[Ljava/lang/reflect/Method;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_3b
    move-object/from16 v72, v57

    move-object/from16 v74, v60

    move-object/from16 v41, v67

    const/16 v38, 0x1

    goto :goto_3e

    .line 718
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    .restart local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_55
    move-object/from16 v63, v3

    move-object/from16 v30, v4

    move-object/from16 v64, v5

    move-object/from16 v65, v6

    move/from16 v25, v8

    move/from16 v32, v9

    move-object/from16 v67, v10

    move-object/from16 v26, v12

    move-object v15, v13

    const/16 v29, 0x2

    goto :goto_3c

    :cond_56
    move/from16 v29, v2

    move-object/from16 v63, v3

    move-object/from16 v30, v4

    move-object/from16 v64, v5

    move-object/from16 v65, v6

    move/from16 v25, v8

    move/from16 v32, v9

    move-object/from16 v67, v10

    move-object/from16 v26, v12

    move-object v15, v13

    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v63    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v64    # "methodName":Ljava/lang/String;
    .restart local v65    # "method":Ljava/lang/reflect/Method;
    .restart local v67    # "methods":[Ljava/lang/reflect/Method;
    :goto_3c
    move-object/from16 v13, v63

    array-length v1, v13

    .end local v63    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v13, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    if-eq v1, v12, :cond_57

    .line 719
    nop

    .line 684
    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v13    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v64    # "methodName":Ljava/lang/String;
    .end local v65    # "method":Ljava/lang/reflect/Method;
    .end local v67    # "methods":[Ljava/lang/reflect/Method;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_3d
    move-object/from16 v73, v0

    move/from16 v38, v12

    move-object/from16 v72, v57

    move-object/from16 v74, v60

    move-object/from16 v41, v67

    :goto_3e
    const/16 v39, 0x0

    goto/16 :goto_4d

    .line 722
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v13    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v18    # "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    .restart local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v64    # "methodName":Ljava/lang/String;
    .restart local v65    # "method":Ljava/lang/reflect/Method;
    .restart local v67    # "methods":[Ljava/lang/reflect/Method;
    :cond_57
    if-nez v24, :cond_58

    .line 723
    move-object/from16 v11, v65

    invoke-static {v14, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 726
    .end local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v65    # "method":Ljava/lang/reflect/Method;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v11, "method":Ljava/lang/reflect/Method;
    move-object v10, v1

    goto :goto_3f

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v65    # "method":Ljava/lang/reflect/Method;
    :cond_58
    move-object/from16 v11, v65

    move-object/from16 v10, v24

    .end local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v65    # "method":Ljava/lang/reflect/Method;
    .local v10, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :goto_3f
    if-nez v10, :cond_59

    move-object/from16 v9, v64

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .end local v64    # "methodName":Ljava/lang/String;
    .local v9, "methodName":Ljava/lang/String;
    if-ge v1, v7, :cond_5a

    .line 727
    goto :goto_3d

    .line 730
    .end local v9    # "methodName":Ljava/lang/String;
    .restart local v64    # "methodName":Ljava/lang/String;
    :cond_59
    move-object/from16 v9, v64

    .end local v64    # "methodName":Ljava/lang/String;
    .restart local v9    # "methodName":Ljava/lang/String;
    :cond_5a
    if-eqz v10, :cond_5c

    .line 731
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 732
    goto :goto_3d

    .line 735
    :cond_5b
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 736
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 737
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v23

    .line 739
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 740
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v24

    .line 741
    .local v24, "propertyName":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    move-object v1, v8

    move-object/from16 v2, v24

    move-object v3, v11

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v15, p1

    move-object v6, v15

    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v7, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v68, v7

    move/from16 v7, v18

    .end local v7    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v68, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v69, v8

    move/from16 v8, v21

    move-object/from16 v70, v9

    move/from16 v9, v23

    .end local v9    # "methodName":Ljava/lang/String;
    .local v70, "methodName":Ljava/lang/String;
    move-object/from16 v34, v10

    .end local v10    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v34, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v35, v11

    move-object/from16 v11, v27

    .end local v11    # "method":Ljava/lang/reflect/Method;
    .local v35, "method":Ljava/lang/reflect/Method;
    move-object/from16 v12, v33

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    .end local v13    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v27, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v13, v68

    move-object/from16 v1, v69

    invoke-static {v13, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 743
    .end local v68    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    goto :goto_40

    .line 747
    .end local v24    # "propertyName":Ljava/lang/String;
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "method":Ljava/lang/reflect/Method;
    .end local v70    # "methodName":Ljava/lang/String;
    .restart local v9    # "methodName":Ljava/lang/String;
    .restart local v10    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .local v13, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_5c
    move-object/from16 v70, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v27, v13

    move-object v13, v15

    move-object/from16 v15, p1

    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v35    # "method":Ljava/lang/reflect/Method;
    .restart local v70    # "methodName":Ljava/lang/String;
    if-nez v34, :cond_5e

    const-string v1, "set"

    move-object/from16 v12, v70

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .end local v70    # "methodName":Ljava/lang/String;
    .local v12, "methodName":Ljava/lang/String;
    if-eqz v1, :cond_5d

    goto :goto_41

    .line 684
    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "method":Ljava/lang/reflect/Method;
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v67    # "methods":[Ljava/lang/reflect/Method;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_5d
    :goto_40
    move-object/from16 v73, v0

    move-object v15, v13

    goto/16 :goto_3b

    .line 747
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    .restart local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v35    # "method":Ljava/lang/reflect/Method;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v67    # "methods":[Ljava/lang/reflect/Method;
    .restart local v70    # "methodName":Ljava/lang/String;
    :cond_5e
    move-object/from16 v12, v70

    .end local v70    # "methodName":Ljava/lang/String;
    .restart local v12    # "methodName":Ljava/lang/String;
    :goto_41
    if-eqz v26, :cond_5f

    .line 748
    goto :goto_40

    .line 751
    :cond_5f
    const/4 v11, 0x3

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 754
    .local v10, "c3":C
    const/4 v1, 0x0

    .line 756
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 758
    .local v2, "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_62

    .line 759
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    move-object/from16 v9, v67

    array-length v4, v9

    .end local v67    # "methods":[Ljava/lang/reflect/Method;
    .local v9, "methods":[Ljava/lang/reflect/Method;
    if-ge v3, v4, :cond_61

    .line 761
    aget-object v4, v9, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 762
    aget-object v4, v9, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_60
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v67, v9

    goto :goto_42

    .line 767
    .end local v3    # "i":I
    :cond_61
    move-object v8, v2

    goto :goto_43

    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v67    # "methods":[Ljava/lang/reflect/Method;
    :cond_62
    move-object/from16 v9, v67

    move-object v8, v2

    .end local v2    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v67    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    :goto_43
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_6a

    const/16 v2, 0x200

    if-le v10, v2, :cond_63

    .line 772
    move-object/from16 v5, v57

    const/4 v6, 0x1

    goto/16 :goto_45

    .line 787
    :cond_63
    const/16 v2, 0x5f

    if-ne v10, v2, :cond_67

    .line 790
    if-eqz v17, :cond_65

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "getMethodName":Ljava/lang/String;
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 793
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "propertyName":Ljava/lang/String;
    goto :goto_44

    .line 795
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_44
    move-object/from16 v5, v57

    invoke-static {v14, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 798
    .end local v2    # "getMethodName":Ljava/lang/String;
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v5, "declaredFields":[Ljava/lang/reflect/Field;
    goto/16 :goto_48

    .line 799
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_65
    move-object/from16 v5, v57

    const/4 v6, 0x1

    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    .restart local v3    # "propertyName":Ljava/lang/String;
    invoke-static {v14, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 801
    if-nez v1, :cond_6e

    .line 802
    move-object v2, v3

    .line 803
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-static {v14, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 805
    if-nez v1, :cond_66

    .line 806
    nop

    .line 808
    .end local v3    # "propertyName":Ljava/lang/String;
    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, v2

    .end local v2    # "propertyName":Ljava/lang/String;
    .restart local v3    # "propertyName":Ljava/lang/String;
    :cond_66
    goto/16 :goto_48

    .line 811
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_67
    move-object/from16 v5, v57

    const/4 v6, 0x1

    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    const/16 v2, 0x66

    if-ne v10, v2, :cond_68

    .line 812
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_47

    .line 813
    :cond_68
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_69

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 814
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    .line 816
    :cond_69
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 817
    .restart local v3    # "propertyName":Ljava/lang/String;
    invoke-static {v14, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 818
    if-nez v1, :cond_6e

    .line 819
    nop

    .line 684
    move-object/from16 v73, v0

    move-object/from16 v72, v5

    move/from16 v38, v6

    move-object/from16 v41, v9

    move-object v15, v13

    move-object/from16 v74, v60

    goto/16 :goto_3e

    .line 772
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_6a
    move-object/from16 v5, v57

    const/4 v6, 0x1

    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    :goto_45
    if-eqz v17, :cond_6c

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "getMethodName":Ljava/lang/String;
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 775
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_46

    .line 777
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 779
    .end local v2    # "getMethodName":Ljava/lang/String;
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_46
    goto :goto_48

    .line 780
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_6c
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_6d

    .line 781
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_47
    goto :goto_48

    .line 783
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    .line 823
    .restart local v3    # "propertyName":Ljava/lang/String;
    :cond_6e
    :goto_48
    if-nez v1, :cond_6f

    .line 824
    invoke-static {v14, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 827
    :cond_6f
    if-nez v1, :cond_70

    const/4 v7, 0x0

    aget-object v2, v27, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_71

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "isFieldName":Ljava/lang/String;
    invoke-static {v14, v2, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .end local v2    # "isFieldName":Ljava/lang/String;
    goto :goto_49

    .line 832
    :cond_70
    const/4 v7, 0x0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v4, "field":Ljava/lang/reflect/Field;
    :cond_71
    :goto_49
    move-object v4, v1

    const/4 v1, 0x0

    .line 833
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v4, :cond_74

    .line 834
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v4, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 836
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v2, :cond_73

    .line 837
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_72

    .line 838
    nop

    .line 684
    move-object/from16 v73, v0

    move-object/from16 v72, v5

    move/from16 v38, v6

    move/from16 v39, v7

    move-object/from16 v41, v9

    move-object v15, v13

    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .end local v10    # "c3":C
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "method":Ljava/lang/reflect/Method;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_4a
    move-object/from16 v74, v60

    goto/16 :goto_4d

    .line 841
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v10    # "c3":C
    .restart local v12    # "methodName":Ljava/lang/String;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v18    # "ordinal":I
    .restart local v21    # "serialzeFeatures":I
    .restart local v23    # "parserFeatures":I
    .restart local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v35    # "method":Ljava/lang/reflect/Method;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_72
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 842
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 843
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v23

    .line 845
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_73

    .line 846
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v24

    .line 847
    .end local v3    # "propertyName":Ljava/lang/String;
    .restart local v24    # "propertyName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v33, 0x0

    move-object v1, v3

    move-object/from16 v36, v2

    move-object/from16 v2, v24

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v36, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v71, v3

    move-object/from16 v3, v35

    move-object/from16 v37, v4

    .end local v4    # "field":Ljava/lang/reflect/Field;
    .local v37, "field":Ljava/lang/reflect/Field;
    move-object/from16 v72, v5

    move-object v5, v14

    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    move/from16 v38, v6

    move-object v6, v15

    move/from16 v39, v7

    move/from16 v7, v18

    move-object/from16 v40, v8

    move/from16 v8, v21

    .end local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v40, "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v41, v9

    move/from16 v9, v23

    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    move/from16 v42, v10

    move-object/from16 v10, v34

    .end local v10    # "c3":C
    .local v42, "c3":C
    move-object/from16 v11, v36

    move-object/from16 v43, v12

    move-object/from16 v12, v33

    .end local v12    # "methodName":Ljava/lang/String;
    .local v43, "methodName":Ljava/lang/String;
    move-object v15, v13

    move-object/from16 v13, v16

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, v71

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 849
    nop

    .line 684
    move-object/from16 v73, v0

    goto :goto_4a

    .line 855
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v24    # "propertyName":Ljava/lang/String;
    .end local v36    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "field":Ljava/lang/reflect/Field;
    .end local v40    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v42    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v10    # "c3":C
    .restart local v12    # "methodName":Ljava/lang/String;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_73
    move-object/from16 v36, v2

    move-object/from16 v37, v4

    move-object/from16 v72, v5

    move/from16 v38, v6

    move/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v42, v10

    move-object/from16 v43, v12

    move-object v15, v13

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .end local v10    # "c3":C
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v36    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v37    # "field":Ljava/lang/reflect/Field;
    .restart local v40    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v42    # "c3":C
    .restart local v43    # "methodName":Ljava/lang/String;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_4b

    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v36    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "field":Ljava/lang/reflect/Field;
    .end local v40    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v42    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    .restart local v10    # "c3":C
    .restart local v12    # "methodName":Ljava/lang/String;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_74
    move-object/from16 v37, v4

    move-object/from16 v72, v5

    move/from16 v38, v6

    move/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v42, v10

    move-object/from16 v43, v12

    move-object v15, v13

    move-object/from16 v36, v1

    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v8    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    .end local v10    # "c3":C
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v36    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v37    # "field":Ljava/lang/reflect/Field;
    .restart local v40    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v42    # "c3":C
    .restart local v43    # "methodName":Ljava/lang/String;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    :goto_4b
    move-object/from16 v13, v60

    if-eqz v13, :cond_75

    .line 856
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v13, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    .end local v3    # "propertyName":Ljava/lang/String;
    .local v1, "propertyName":Ljava/lang/String;
    move-object/from16 v24, v1

    goto :goto_4c

    .end local v1    # "propertyName":Ljava/lang/String;
    .restart local v3    # "propertyName":Ljava/lang/String;
    :cond_75
    move-object/from16 v24, v3

    .end local v3    # "propertyName":Ljava/lang/String;
    .restart local v24    # "propertyName":Ljava/lang/String;
    :goto_4c
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v33, 0x0

    move-object v1, v12

    move-object/from16 v2, v24

    move-object/from16 v3, v35

    move-object/from16 v4, v37

    move-object v5, v14

    move-object v11, v15

    move-object/from16 v15, p1

    move-object v6, v15

    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v11, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v10, v34

    move-object v15, v11

    move-object/from16 v11, v36

    .end local v11    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v73, v0

    move-object v0, v12

    move-object/from16 v12, v33

    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    move-object/from16 v74, v13

    move-object/from16 v13, v16

    .end local v13    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .end local v18    # "ordinal":I
    .end local v21    # "serialzeFeatures":I
    .end local v23    # "parserFeatures":I
    .end local v24    # "propertyName":Ljava/lang/String;
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v30    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "field":Ljava/lang/reflect/Field;
    .end local v40    # "getMethodNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "c3":C
    .end local v43    # "methodName":Ljava/lang/String;
    goto :goto_4d

    .line 684
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    .local v12, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_76
    move-object/from16 v73, v0

    move/from16 v25, v8

    move/from16 v32, v9

    move-object/from16 v41, v10

    move/from16 v39, v11

    move-object/from16 v26, v12

    move-object v15, v13

    move-object/from16 v72, v57

    move-object/from16 v74, v60

    const/16 v29, 0x2

    const/16 v38, 0x1

    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_4d
    add-int/lit8 v8, v25, 0x1

    move-object v13, v15

    move-object/from16 v12, v26

    move/from16 v9, v32

    move/from16 v11, v39

    move-object/from16 v10, v41

    move-object/from16 v57, v72

    move-object/from16 v0, v73

    move-object/from16 v60, v74

    move-object/from16 v15, p1

    goto/16 :goto_38

    .line 863
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_77
    move-object/from16 v73, v0

    move-object/from16 v41, v10

    move/from16 v39, v11

    move-object/from16 v26, v12

    move-object v15, v13

    move-object/from16 v72, v57

    move-object/from16 v74, v60

    .end local v0    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v57    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v60    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v26    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v73    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 864
    .local v0, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v12, v74

    move-object/from16 v15, p1

    invoke-static {v14, v15, v12, v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 866
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v74    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v12, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v10, v11

    move/from16 v9, v39

    :goto_4e
    if-ge v9, v10, :cond_87

    aget-object v8, v11, v9

    .line 867
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "methodName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_78

    .line 869
    nop

    .line 866
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v75, "fields":[Ljava/lang/reflect/Field;
    .local v77, "declaredFields":[Ljava/lang/reflect/Field;
    .local v79, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_4f
    move-object/from16 v75, v0

    move/from16 v34, v7

    move/from16 v39, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v79, v12

    move-object v15, v13

    move-object/from16 v77, v72

    const/16 v30, 0x3

    goto/16 :goto_54

    .line 872
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_78
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 873
    goto :goto_4f

    .line 876
    :cond_79
    if-nez v26, :cond_86

    const-string v1, "get"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 877
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_7b

    .line 878
    nop

    .line 866
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_7a
    :goto_50
    move-object/from16 v75, v0

    move/from16 v30, v5

    move/from16 v34, v7

    move/from16 v39, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v79, v12

    move-object v15, v13

    move-object/from16 v77, v72

    goto/16 :goto_54

    .line 881
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_7b
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-class v1, Ljava/util/Map;

    .line 882
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 883
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 884
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 885
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_7a

    .line 888
    :cond_7c
    const/4 v1, 0x0

    .line 890
    .local v1, "collectionField":Ljava/lang/reflect/Field;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 891
    .local v4, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v4, :cond_7d

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 892
    goto :goto_50

    .line 895
    :cond_7d
    if-eqz v4, :cond_7e

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7e

    .line 896
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v75, v0

    move-object v0, v1

    move-object/from16 v3, v72

    goto/16 :goto_52

    .line 898
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    .restart local v2    # "propertyName":Ljava/lang/String;
    move-object/from16 v3, v72

    invoke-static {v14, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 901
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v3, "declaredFields":[Ljava/lang/reflect/Field;
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_81

    .line 902
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 903
    .local v7, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_7f

    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v18

    if-nez v18, :cond_7f

    .line 904
    nop

    .line 866
    move-object/from16 v75, v0

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "collectionField":Ljava/lang/reflect/Field;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_51
    move-object/from16 v77, v3

    move/from16 v39, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v79, v12

    move-object v15, v13

    const/16 v30, 0x3

    const/16 v34, 0x4

    goto/16 :goto_54

    .line 907
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v1    # "collectionField":Ljava/lang/reflect/Field;
    .restart local v2    # "propertyName":Ljava/lang/String;
    .restart local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_7f
    move-object/from16 v75, v0

    const-class v0, Ljava/util/Collection;

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v76, v1

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .end local v1    # "collectionField":Ljava/lang/reflect/Field;
    .local v76, "collectionField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_80

    const-class v0, Ljava/util/Map;

    .line 908
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 909
    :cond_80
    move-object v0, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v76    # "collectionField":Ljava/lang/reflect/Field;
    .local v0, "collectionField":Ljava/lang/reflect/Field;
    goto :goto_52

    .line 914
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .local v0, "fields":[Ljava/lang/reflect/Field;
    .restart local v1    # "collectionField":Ljava/lang/reflect/Field;
    :cond_81
    move-object/from16 v75, v0

    move-object/from16 v76, v1

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "collectionField":Ljava/lang/reflect/Field;
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    .restart local v76    # "collectionField":Ljava/lang/reflect/Field;
    :cond_82
    move-object/from16 v0, v76

    .end local v76    # "collectionField":Ljava/lang/reflect/Field;
    .local v0, "collectionField":Ljava/lang/reflect/Field;
    :goto_52
    if-eqz v12, :cond_83

    .line 915
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 918
    .end local v2    # "propertyName":Ljava/lang/String;
    .local v1, "propertyName":Ljava/lang/String;
    move-object v7, v1

    goto :goto_53

    .end local v1    # "propertyName":Ljava/lang/String;
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_83
    move-object v7, v2

    .end local v2    # "propertyName":Ljava/lang/String;
    .local v7, "propertyName":Ljava/lang/String;
    :goto_53
    invoke-static {v13, v7}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v18

    .line 919
    .local v18, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v18, :cond_84

    .line 920
    goto :goto_51

    .line 923
    :cond_84
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v77, v3

    move-object v3, v8

    .end local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v29, v4

    move-object v4, v0

    .end local v4    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v29, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v78, v5

    const/16 v30, 0x3

    move-object v5, v14

    move-object/from16 v32, v6

    move-object v6, v15

    .end local v6    # "methodName":Ljava/lang/String;
    .local v32, "methodName":Ljava/lang/String;
    move-object/from16 v33, v7

    const/16 v34, 0x4

    move/from16 v7, v21

    .end local v7    # "propertyName":Ljava/lang/String;
    .local v33, "propertyName":Ljava/lang/String;
    move-object/from16 v21, v8

    move/from16 v8, v23

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .local v21, "method":Ljava/lang/reflect/Method;
    move/from16 v39, v9

    move/from16 v9, v24

    move/from16 v23, v10

    move-object/from16 v10, v29

    move-object/from16 v24, v11

    move-object/from16 v11, v25

    move-object/from16 v79, v12

    move-object/from16 v12, v27

    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object v15, v13

    move-object/from16 v13, v16

    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, v78

    invoke-static {v15, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .end local v0    # "collectionField":Ljava/lang/reflect/Field;
    .end local v18    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v21    # "method":Ljava/lang/reflect/Method;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v32    # "methodName":Ljava/lang/String;
    .end local v33    # "propertyName":Ljava/lang/String;
    goto :goto_54

    .line 866
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v0, "fields":[Ljava/lang/reflect/Field;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_85
    move-object/from16 v75, v0

    move/from16 v30, v5

    move/from16 v34, v7

    move/from16 v39, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v79, v12

    move-object v15, v13

    move-object/from16 v77, v72

    goto :goto_54

    :cond_86
    move-object/from16 v75, v0

    move/from16 v34, v7

    move/from16 v39, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v79, v12

    move-object v15, v13

    move-object/from16 v77, v72

    const/16 v30, 0x3

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_54
    add-int/lit8 v9, v39, 0x1

    move-object v13, v15

    move/from16 v10, v23

    move-object/from16 v11, v24

    move/from16 v7, v34

    move-object/from16 v0, v75

    move-object/from16 v72, v77

    move-object/from16 v12, v79

    move-object/from16 v15, p1

    goto/16 :goto_4e

    .line 928
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v75    # "fields":[Ljava/lang/reflect/Field;
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_87
    move-object/from16 v75, v0

    move-object/from16 v79, v12

    move-object v15, v13

    move-object/from16 v77, v72

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v13    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v72    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v75    # "fields":[Ljava/lang/reflect/Field;
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8a

    .line 929
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isXmlField(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 930
    const/4 v0, 0x1

    .end local p3    # "fieldBased":Z
    .local v0, "fieldBased":Z
    goto :goto_55

    .line 933
    .end local v0    # "fieldBased":Z
    .restart local p3    # "fieldBased":Z
    :cond_88
    move/from16 v0, p3

    .end local p3    # "fieldBased":Z
    .restart local v0    # "fieldBased":Z
    :goto_55
    if-eqz v0, :cond_89

    .line 934
    move-object v1, v14

    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_56
    if-eqz v1, :cond_89

    .line 935
    move-object v12, v15

    move-object/from16 v11, v77

    move-object/from16 v13, v79

    move-object/from16 v10, p1

    invoke-static {v14, v10, v13, v12, v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 934
    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v11, "declaredFields":[Ljava/lang/reflect/Field;
    .local v12, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v13, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_56

    .line 940
    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v13    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_89
    move-object v12, v15

    move-object/from16 v11, v77

    move-object/from16 v13, v79

    move-object/from16 v10, p1

    goto :goto_57

    .end local v0    # "fieldBased":Z
    .restart local p3    # "fieldBased":Z
    :cond_8a
    move-object v12, v15

    move-object/from16 v11, v77

    move-object/from16 v13, v79

    move-object/from16 v10, p1

    move/from16 v0, p3

    .end local v15    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v77    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v79    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local p3    # "fieldBased":Z
    .restart local v0    # "fieldBased":Z
    .restart local v11    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v13    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_57
    new-instance v15, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v1, v15

    move-object v2, v14

    move-object/from16 v3, v26

    move-object/from16 v4, v31

    move-object/from16 v5, v45

    move-object/from16 v6, v19

    move-object/from16 v7, v73

    move-object/from16 v8, v28

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v15
.end method

.method private static buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 221
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 222
    .local v0, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 223
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 224
    return-object v2

    .line 227
    :cond_0
    nop

    .line 230
    .local v2, "typeVarMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    :goto_0
    if-eqz v1, :cond_4

    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    .line 231
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 233
    .local v3, "childGenericParentActualTypeArgs":[Ljava/lang/reflect/Type;
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 234
    .local v4, "currentTypeParameters":[Ljava/lang/reflect/TypeVariable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 236
    if-nez v2, :cond_1

    .line 237
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v2, v6

    .line 240
    :cond_1
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 241
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    .line 242
    .local v6, "actualArg":Ljava/lang/reflect/Type;
    aget-object v7, v4, v5

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v6    # "actualArg":Ljava/lang/reflect/Type;
    goto :goto_2

    .line 244
    :cond_2
    aget-object v6, v4, v5

    aget-object v7, v3, v5

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 230
    .end local v3    # "childGenericParentActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v4    # "currentTypeParameters":[Ljava/lang/reflect/TypeVariable;
    .end local v5    # "i":I
    :cond_3
    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_4
    return-object v2
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 28
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p2

    .line 944
    move-object/from16 v1, p4

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    .line 946
    .local v15, "genericInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    array-length v14, v1

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v14, :cond_a

    aget-object v12, v1, v13

    .line 947
    .local v12, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    .line 948
    .local v17, "modifiers":I
    and-int/lit8 v2, v17, 0x8

    if-eqz v2, :cond_0

    .line 949
    nop

    .line 946
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v17    # "modifiers":I
    :goto_1
    move-object/from16 v2, p3

    move/from16 v27, v13

    move/from16 v24, v14

    goto/16 :goto_7

    .line 952
    .restart local v12    # "field":Ljava/lang/reflect/Field;
    .restart local v17    # "modifiers":I
    :cond_0
    and-int/lit8 v2, v17, 0x10

    if-eqz v2, :cond_3

    .line 953
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 954
    .local v2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/Collection;

    .line 955
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 956
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 957
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 958
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v3, v16

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x1

    .line 959
    .local v3, "supportReadOnly":Z
    :goto_3
    if-nez v3, :cond_3

    .line 960
    goto :goto_1

    .line 964
    .end local v2    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "supportReadOnly":Z
    :cond_3
    const/4 v2, 0x0

    .line 965
    .local v2, "contains":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 966
    .local v4, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 967
    const/4 v2, 0x1

    .line 968
    goto :goto_5

    .line 970
    .end local v4    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    goto :goto_4

    .line 972
    .end local v2    # "contains":Z
    .local v18, "contains":Z
    :cond_5
    :goto_5
    move/from16 v18, v2

    if-eqz v18, :cond_6

    .line 973
    goto :goto_1

    .line 976
    :cond_6
    const/4 v2, 0x0

    .local v2, "ordinal":I
    const/4 v3, 0x0

    .local v3, "serialzeFeatures":I
    const/4 v4, 0x0

    .line 977
    .local v4, "parserFeatures":I
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 979
    .local v5, "propertyName":Ljava/lang/String;
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 981
    .local v11, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v11, :cond_8

    .line 982
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-nez v6, :cond_7

    .line 983
    goto :goto_1

    .line 986
    :cond_7
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 987
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    .line 988
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    .line 990
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    .line 991
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 995
    .end local v2    # "ordinal":I
    .end local v3    # "serialzeFeatures":I
    .end local v4    # "parserFeatures":I
    .local v19, "ordinal":I
    .local v20, "serialzeFeatures":I
    .local v21, "parserFeatures":I
    :cond_8
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    if-eqz v0, :cond_9

    .line 996
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 999
    .end local v5    # "propertyName":Ljava/lang/String;
    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v22, v2

    goto :goto_6

    .end local v2    # "propertyName":Ljava/lang/String;
    .restart local v5    # "propertyName":Ljava/lang/String;
    :cond_9
    move-object/from16 v22, v5

    .end local v5    # "propertyName":Ljava/lang/String;
    .local v22, "propertyName":Ljava/lang/String;
    :goto_6
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v2, v10

    move-object/from16 v3, v22

    move-object v5, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v25, v10

    move/from16 v10, v21

    move-object/from16 v26, v11

    move-object/from16 v11, v23

    .end local v11    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v26, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v23, v12

    move-object/from16 v12, v26

    .end local v12    # "field":Ljava/lang/reflect/Field;
    .local v23, "field":Ljava/lang/reflect/Field;
    move/from16 v27, v13

    move-object/from16 v13, v24

    move/from16 v24, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v25

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 946
    .end local v17    # "modifiers":I
    .end local v18    # "contains":Z
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v23    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_7
    add-int/lit8 v13, v27, 0x1

    move/from16 v14, v24

    goto/16 :goto_0

    .line 1002
    :cond_a
    move-object/from16 v2, p3

    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1127
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1131
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1136
    return-object v0

    .line 1139
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v1

    .line 1141
    .local v1, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_2

    .line 1142
    return-object v0

    .line 1145
    :cond_2
    return-object v1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 15
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1035
    const/4 v0, 0x0

    .line 1037
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .end local v0    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p0, v0

    .line 1038
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 1039
    .local v5, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v5, :cond_1

    .line 1040
    if-nez v3, :cond_0

    .line 1044
    move-object v3, v4

    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    goto :goto_1

    .line 1041
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    if-eqz v3, :cond_3

    .line 1049
    return-object v3

    .line 1052
    :cond_3
    array-length v0, p0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_b

    aget-object v4, p0, v1

    .line 1053
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 1055
    .local v5, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v6, v5

    if-nez v6, :cond_4

    .line 1056
    goto :goto_7

    .line 1058
    :cond_4
    const/4 v6, 0x1

    .line 1059
    .local v6, "match":Z
    array-length v7, v5

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v5, v8

    .line 1060
    .local v9, "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    const/4 v10, 0x0

    .line 1061
    .local v10, "paramMatch":Z
    array-length v11, v9

    move v12, v2

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v9, v12

    .line 1062
    .local v13, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v14, v13, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_5

    .line 1063
    const/4 v10, 0x1

    .line 1064
    goto :goto_5

    .line 1061
    .end local v13    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1067
    :cond_6
    :goto_5
    if-nez v10, :cond_7

    .line 1068
    const/4 v6, 0x0

    .line 1069
    goto :goto_6

    .line 1059
    .end local v9    # "paramAnnotationArray":[Ljava/lang/annotation/Annotation;
    .end local v10    # "paramMatch":Z
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1073
    :cond_8
    :goto_6
    if-eqz v6, :cond_a

    .line 1074
    if-nez v3, :cond_9

    .line 1078
    move-object v3, v4

    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v6    # "match":Z
    goto :goto_7

    .line 1075
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v5    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v6    # "match":Z
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v6    # "match":Z
    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1082
    :cond_b
    if-eqz v3, :cond_c

    .line 1083
    return-object v3

    .line 1086
    :cond_c
    return-object v3
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1005
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    const/4 v0, 0x0

    return-object v0

    .line 1009
    :cond_0
    const/4 v0, 0x0

    .line 1011
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1012
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    .line 1013
    move-object v0, v4

    .line 1014
    goto :goto_1

    .line 1011
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1018
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 1019
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1021
    array-length v1, p1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 1022
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    .local v6, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    aget-object v5, v6, v2

    .line 1023
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1024
    move-object v0, v4

    .line 1025
    goto :goto_3

    .line 1021
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1031
    .end local v6    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    return-object v0
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methods"    # [Ljava/lang/reflect/Method;
    .param p2, "jacksonCompatible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1090
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1092
    .local v0, "factoryMethod":Ljava/lang/reflect/Method;
    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .end local v0    # "factoryMethod":Ljava/lang/reflect/Method;
    .local v3, "factoryMethod":Ljava/lang/reflect/Method;
    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v4, p1, v0

    .line 1093
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1094
    goto :goto_1

    .line 1097
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1098
    goto :goto_1

    .line 1101
    :cond_1
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 1102
    .local v5, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v5, :cond_3

    .line 1103
    if-nez v3, :cond_2

    .line 1107
    move-object v3, v4

    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    goto :goto_1

    .line 1104
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_4
    if-nez v3, :cond_6

    if-eqz p2, :cond_6

    .line 1113
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v1, p1, v2

    .line 1114
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1115
    move-object v3, v1

    .line 1116
    goto :goto_3

    .line 1113
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1120
    :cond_6
    :goto_3
    return-object v3
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 173
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 174
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    return-object v1

    .line 178
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 179
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    return-object v1

    .line 182
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
