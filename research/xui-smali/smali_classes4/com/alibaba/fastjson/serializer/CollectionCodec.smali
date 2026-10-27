.class public Lcom/alibaba/fastjson/serializer/CollectionCodec;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 112
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    if-ne p2, v0, :cond_1

    .line 118
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 119
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 120
    return-object v0

    .line 123
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 125
    .local v0, "list":Ljava/util/Collection;
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 126
    .local v1, "itemType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 128
    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 134
    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 19
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

    .line 38
    move/from16 v9, p5

    iget-object v10, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 40
    .local v10, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v8, :cond_0

    .line 41
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 42
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "elementType":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 47
    invoke-static {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 52
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .local v11, "elementType":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    move-object v11, v0

    goto :goto_2

    .line 49
    .end local v11    # "elementType":Ljava/lang/reflect/Type;
    .restart local v0    # "elementType":Ljava/lang/reflect/Type;
    :cond_2
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 52
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .restart local v11    # "elementType":Ljava/lang/reflect/Type;
    :goto_2
    move-object v12, v8

    check-cast v12, Ljava/util/Collection;

    .line 54
    .local v12, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 55
    .local v13, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v0, 0x0

    move-object/from16 v14, p3

    invoke-virtual {v7, v13, v8, v14, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const-string v0, "Set"

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_3

    .line 60
    :cond_3
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 61
    const-string v0, "TreeSet"

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 66
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 67
    .local v0, "i":I
    const/16 v1, 0x5b

    :try_start_0
    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 68
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    .line 70
    .local v6, "item":Ljava/lang/Object;
    add-int/lit8 v16, v0, 0x1

    .local v16, "i":I
    if-eqz v0, :cond_5

    .line 71
    .end local v0    # "i":I
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 74
    :cond_5
    if-nez v6, :cond_6

    .line 75
    invoke-virtual {v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 76
    goto/16 :goto_6

    .line 79
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 82
    move-object v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 83
    goto :goto_6

    .line 86
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 87
    move-object v1, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 89
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 90
    const/16 v1, 0x4c

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 95
    :cond_8
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    move-object v5, v1

    .line 96
    .local v5, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_9

    .line 98
    move-object v1, v5

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 99
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    add-int/lit8 v2, v16, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v7

    move-object v3, v6

    move-object/from16 v17, v5

    move-object v5, v11

    .end local v5    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v17, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v18, v6

    move v6, v9

    .end local v6    # "item":Ljava/lang/Object;
    .local v18, "item":Ljava/lang/Object;
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 100
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    goto :goto_5

    .line 101
    .end local v17    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "item":Ljava/lang/Object;
    .restart local v5    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_9
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v6    # "item":Ljava/lang/Object;
    .restart local v17    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v18    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v16, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v1, v17

    move-object v2, v7

    move-object/from16 v3, v18

    move-object v5, v11

    move v6, v9

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 103
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "item":Ljava/lang/Object;
    :goto_5
    nop

    .line 68
    :cond_a
    :goto_6
    move/from16 v0, v16

    goto/16 :goto_4

    .line 104
    .end local v16    # "i":I
    .local v0, "i":I
    :cond_b
    const/16 v1, 0x5d

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0    # "i":I
    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    iput-object v13, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
