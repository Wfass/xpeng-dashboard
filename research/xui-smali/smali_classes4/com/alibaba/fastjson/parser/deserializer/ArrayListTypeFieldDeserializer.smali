.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 7
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 27
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 29
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 30
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 32
    .local v1, "argType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_0

    .line 33
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 34
    .local v3, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 35
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 36
    aget-object v1, v4, v2

    .line 39
    .end local v3    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 40
    .end local v1    # "argType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 41
    :cond_1
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .line 46
    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 81
    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 82
    .local v4, "itemType":Ljava/lang/reflect/Type;
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 84
    .local v5, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x1

    if-eqz v6, :cond_b

    .line 85
    instance-of v6, v4, Ljava/lang/reflect/TypeVariable;

    const/4 v9, -0x1

    if-eqz v6, :cond_4

    .line 86
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 87
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v8, v2

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 89
    .local v8, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v10, 0x0

    .line 90
    .local v10, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Class;

    if-eqz v11, :cond_0

    .line 91
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Ljava/lang/Class;

    .line 94
    :cond_0
    const/4 v11, -0x1

    .line 95
    .local v11, "paramIndex":I
    if-eqz v10, :cond_2

    .line 96
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    array-length v13, v13

    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_2

    .line 97
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    aget-object v14, v14, v12

    .line 98
    .local v14, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    move v11, v12

    .line 100
    goto :goto_1

    .line 96
    .end local v14    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 105
    .end local v12    # "i":I
    .end local v13    # "size":I
    :cond_2
    :goto_1
    if-eq v11, v9, :cond_3

    .line 106
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    aget-object v4, v7, v11

    .line 107
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 111
    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v8    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "paramIndex":I
    :cond_3
    nop

    .line 158
    move-object/from16 v17, v5

    goto/16 :goto_6

    .line 111
    :cond_4
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_a

    .line 112
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 113
    .local v6, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 114
    .local v7, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v10, v7

    if-ne v10, v8, :cond_8

    const/4 v8, 0x0

    aget-object v10, v7, v8

    instance-of v10, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_8

    .line 115
    aget-object v10, v7, v8

    move-object v8, v10

    check-cast v8, Ljava/lang/reflect/TypeVariable;

    .line 116
    .local v8, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v10, v2

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 118
    .local v10, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 119
    .local v11, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_5

    .line 120
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/Class;

    .line 123
    :cond_5
    const/4 v12, -0x1

    .line 124
    .local v12, "paramIndex":I
    if-eqz v11, :cond_7

    .line 125
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v14, v14

    .local v14, "size":I
    :goto_2
    if-ge v13, v14, :cond_7

    .line 126
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v15, v15, v13

    .line 127
    .local v15, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v5

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v17, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    move v12, v13

    .line 129
    goto :goto_3

    .line 125
    .end local v15    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    const/4 v9, -0x1

    goto :goto_2

    .line 135
    .end local v13    # "i":I
    .end local v14    # "size":I
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_7
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_3
    const/4 v5, -0x1

    if-eq v12, v5, :cond_9

    .line 136
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v12

    const/4 v9, 0x0

    aput-object v5, v7, v9

    .line 137
    new-instance v5, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-direct {v5, v7, v9, v13}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object v4, v5

    .end local v6    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v7    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v8    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    goto :goto_4

    .line 140
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_9
    :goto_4
    goto :goto_6

    .line 158
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_a
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_6

    .line 141
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_b
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_d

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_d

    .line 142
    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 143
    .local v5, "objectClass":Ljava/lang/Class;
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 144
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 146
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    array-length v9, v9

    .local v9, "size":I
    :goto_5
    if-ge v7, v9, :cond_d

    .line 147
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v7

    .line 148
    .local v10, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 149
    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 150
    .local v11, "bounds":[Ljava/lang/reflect/Type;
    array-length v12, v11

    if-ne v12, v8, :cond_d

    .line 151
    const/4 v8, 0x0

    aget-object v4, v11, v8

    goto :goto_6

    .line 146
    .end local v10    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v11    # "bounds":[Ljava/lang/reflect/Type;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 158
    .end local v5    # "objectClass":Ljava/lang/Class;
    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "i":I
    .end local v9    # "size":I
    :cond_d
    :goto_6
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 160
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    .line 161
    .local v6, "token":I
    const/16 v7, 0xe

    if-ne v6, v7, :cond_12

    .line 162
    if-nez v17, :cond_e

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object/from16 v17, v7

    .line 164
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    iput v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    .line 167
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v7, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_e
    move-object/from16 v7, v17

    iget v8, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 169
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v8, v16

    .line 170
    .end local v16    # "i":I
    .local v8, "i":I
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    const/16 v10, 0x10

    if-eqz v9, :cond_f

    .line 171
    :goto_8
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v10, :cond_f

    .line 172
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 173
    goto :goto_8

    .line 177
    :cond_f
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v11, 0xf

    if-ne v9, v11, :cond_10

    .line 178
    nop

    .line 192
    .end local v8    # "i":I
    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_a

    .line 181
    .restart local v8    # "i":I
    :cond_10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v1, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 182
    .local v9, "val":Ljava/lang/Object;
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 186
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    if-ne v11, v10, :cond_11

    .line 187
    iget v10, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v5, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 188
    nop

    .line 169
    .end local v9    # "val":Ljava/lang/Object;
    :cond_11
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "i":I
    .restart local v16    # "i":I
    goto :goto_7

    .line 194
    .end local v7    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v16    # "i":I
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_12
    if-nez v17, :cond_13

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object/from16 v17, v7

    goto :goto_9

    .line 197
    :cond_13
    move-object/from16 v7, v17

    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v7    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_9
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v1, v4, v8}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 198
    .local v8, "val":Ljava/lang/Object;
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 201
    .end local v8    # "val":Ljava/lang/Object;
    :goto_a
    return-void
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 53
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 54
    .local v1, "token":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 68
    .local v3, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 69
    invoke-virtual {p0, p1, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 72
    if-nez p2, :cond_1

    .line 73
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 56
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    if-nez p2, :cond_3

    .line 57
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_2
    return-void
.end method
