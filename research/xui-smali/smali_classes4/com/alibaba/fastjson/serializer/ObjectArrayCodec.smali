.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;
.source "ObjectArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .line 190
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 196
    .local v0, "size":I
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "objArray":Ljava/lang/Object;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 198
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 200
    .local v4, "value":Ljava/lang/Object;
    if-ne v4, p3, :cond_1

    .line 201
    invoke-static {v1, v3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 202
    goto :goto_3

    .line 205
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    move-object v5, v4

    .local v5, "element":Ljava/lang/Object;
    goto :goto_1

    .line 210
    .end local v5    # "element":Ljava/lang/Object;
    :cond_2
    move-object v5, v4

    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    .restart local v5    # "element":Ljava/lang/Object;
    :goto_1
    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 214
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_3

    .line 215
    :cond_3
    const/4 v5, 0x0

    .line 216
    .restart local v5    # "element":Ljava/lang/Object;
    instance-of v6, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_6

    .line 217
    const/4 v6, 0x0

    .line 218
    .local v6, "contains":Z
    move-object v7, v4

    check-cast v7, Lcom/alibaba/fastjson/JSONArray;

    .line 219
    .local v7, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    .line 220
    .local v8, "valueArraySize":I
    move v9, v6

    move v6, v2

    .local v6, "y":I
    .local v9, "contains":Z
    :goto_2
    if-ge v6, v8, :cond_5

    .line 221
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 222
    .local v10, "valueItem":Ljava/lang/Object;
    if-ne v10, p3, :cond_4

    .line 223
    invoke-virtual {v7, v3, v1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v9, 0x1

    .line 220
    .end local v10    # "valueItem":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 227
    .end local v6    # "y":I
    :cond_5
    if-eqz v9, :cond_6

    .line 228
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 232
    .end local v7    # "valueArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "valueArraySize":I
    .end local v9    # "contains":Z
    :cond_6
    if-nez v5, :cond_7

    .line 233
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, p2, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 235
    :cond_7
    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 197
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "element":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 242
    return-object v1
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 129
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    .line 131
    .local v3, "token":I
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    .line 132
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 133
    return-object v4

    .line 136
    :cond_0
    const/4 v6, 0x4

    if-eq v3, v6, :cond_8

    const/16 v6, 0x1a

    if-ne v3, v6, :cond_1

    goto/16 :goto_5

    .line 149
    :cond_1
    instance-of v4, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_7

    .line 150
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    .line 151
    .local v4, "clazz":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v4}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 152
    .local v5, "componentType":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_6

    .line 153
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 154
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 155
    .local v7, "objType":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 156
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 157
    .local v8, "objParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 158
    .local v10, "objRawType":Ljava/lang/reflect/Type;
    const/4 v11, 0x0

    .line 159
    .local v11, "actualType":Ljava/lang/reflect/Type;
    instance-of v12, v10, Ljava/lang/Class;

    if-eqz v12, :cond_3

    .line 160
    move-object v12, v10

    check-cast v12, Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    .line 161
    .local v12, "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    nop

    .local v9, "i":I
    :goto_0
    array-length v13, v12

    if-ge v9, v13, :cond_3

    .line 162
    aget-object v13, v12, v9

    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 163
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    aget-object v11, v13, v9

    .line 161
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 167
    .end local v9    # "i":I
    .end local v12    # "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    :cond_3
    instance-of v9, v11, Ljava/lang/Class;

    if-eqz v9, :cond_4

    .line 168
    move-object v9, v11

    check-cast v9, Ljava/lang/Class;

    .local v9, "componentClass":Ljava/lang/Class;
    goto :goto_1

    .line 170
    .end local v9    # "componentClass":Ljava/lang/Class;
    :cond_4
    const-class v9, Ljava/lang/Object;

    .end local v8    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "objRawType":Ljava/lang/reflect/Type;
    .end local v11    # "actualType":Ljava/lang/reflect/Type;
    .restart local v9    # "componentClass":Ljava/lang/Class;
    :goto_1
    move-object v8, v9

    .line 172
    .end local v9    # "componentClass":Ljava/lang/Class;
    .local v8, "componentClass":Ljava/lang/Class;
    goto :goto_2

    .line 173
    .end local v8    # "componentClass":Ljava/lang/Class;
    :cond_5
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "objType":Ljava/lang/reflect/Type;
    .restart local v8    # "componentClass":Ljava/lang/Class;
    :goto_2
    move-object v6, v8

    .line 175
    .end local v8    # "componentClass":Ljava/lang/Class;
    .local v6, "componentClass":Ljava/lang/Class;
    goto :goto_3

    .line 176
    .end local v6    # "componentClass":Ljava/lang/Class;
    :cond_6
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .end local v4    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .restart local v6    # "componentClass":Ljava/lang/Class;
    :goto_3
    move-object v4, v6

    .line 178
    .end local v6    # "componentClass":Ljava/lang/Class;
    .local v4, "componentClass":Ljava/lang/Class;
    goto :goto_4

    .line 179
    .end local v4    # "componentClass":Ljava/lang/Class;
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    :cond_7
    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    .line 180
    .local v4, "clazz":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 182
    .local v4, "componentClass":Ljava/lang/Class;
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    :goto_4
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 183
    .local v6, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v7, p3

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 185
    move-object v8, p0

    invoke-direct {v8, v0, v4, v6}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 137
    .end local v4    # "componentClass":Ljava/lang/Class;
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v6    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_8
    :goto_5
    move-object v8, p0

    move-object/from16 v7, p3

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v6

    .line 138
    .local v6, "bytes":[B
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 140
    array-length v5, v6

    if-nez v5, :cond_9

    const-class v5, [B

    if-eq v1, v5, :cond_9

    .line 141
    return-object v4

    .line 144
    :cond_9
    return-object v6
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 246
    const/16 v0, 0xe

    return v0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 23
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 44
    iget-object v9, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 46
    .local v9, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v10, v8

    check-cast v10, [Ljava/lang/Object;

    .line 48
    .local v10, "array":[Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 49
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 50
    return-void

    .line 53
    :cond_0
    array-length v11, v10

    .line 55
    .local v11, "size":I
    add-int/lit8 v12, v11, -0x1

    .line 57
    .local v12, "end":I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_1

    .line 58
    const-string v0, "[]"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 59
    return-void

    .line 62
    :cond_1
    iget-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 63
    .local v13, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v0, 0x0

    move-object/from16 v14, p3

    invoke-virtual {v7, v13, v8, v14, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 68
    .local v2, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    const/16 v15, 0x5d

    const/16 v6, 0x2c

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 73
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_3

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 78
    :cond_2
    aget-object v3, v10, v0

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 82
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 83
    return-void

    .line 86
    :cond_4
    move-object v5, v1

    move-object/from16 v16, v2

    .end local v1    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v0    # "i":I
    .local v5, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v16, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_1
    if-ge v0, v12, :cond_8

    .line 87
    :try_start_1
    aget-object v1, v10, v0

    move-object v4, v1

    .line 89
    .local v4, "item":Ljava/lang/Object;
    if-nez v4, :cond_5

    .line 90
    const-string v1, "null,"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 86
    move v15, v6

    goto/16 :goto_3

    .line 92
    :cond_5
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 106
    move-object/from16 v21, v4

    move-object/from16 v17, v5

    move v15, v6

    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    .line 97
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v5, :cond_7

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v16

    move-object v2, v7

    move-object/from16 v20, v3

    move-object v3, v4

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v21, v4

    move-object/from16 v4, v17

    .end local v4    # "item":Ljava/lang/Object;
    .local v21, "item":Ljava/lang/Object;
    move-object/from16 v17, v5

    move-object/from16 v5, v18

    .end local v5    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v15, v6

    move/from16 v6, v19

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_2

    .line 100
    .end local v17    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "item":Ljava/lang/Object;
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v5    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v17, v5

    move v15, v6

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "item":Ljava/lang/Object;
    move-object/from16 v17, v20

    .line 101
    move-object/from16 v6, v20

    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 103
    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v20    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v2, v7

    move-object/from16 v3, v21

    move-object/from16 v18, v6

    move/from16 v6, v16

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 106
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, v1

    .end local v1    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_2
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 86
    .end local v21    # "item":Ljava/lang/Object;
    move-object/from16 v5, v17

    .end local v17    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v15

    const/16 v15, 0x5d

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_8
    move-object/from16 v17, v5

    .end local v5    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v0, v10, v12

    .line 112
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_9

    .line 113
    const-string v1, "null]"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_5

    .line 115
    :cond_9
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 116
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_4

    .line 118
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_4
    const/16 v1, 0x5d

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v0    # "item":Ljava/lang/Object;
    .end local v16    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v17    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
