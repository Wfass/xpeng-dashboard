.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 24
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

    move-object/from16 v14, p2

    .line 34
    move/from16 v15, p5

    iget-object v0, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 35
    invoke-static {v15, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move/from16 v16, v0

    .line 37
    .local v16, "writeClassName":Z
    iget-object v6, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 39
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/4 v0, 0x0

    .line 40
    .local v0, "elementType":Ljava/lang/reflect/Type;
    if-eqz v16, :cond_2

    .line 41
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 44
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .local v17, "elementType":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v17, v0

    if-nez v14, :cond_3

    .line 45
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 46
    return-void

    .line 49
    :cond_3
    move-object v5, v14

    check-cast v5, Ljava/util/List;

    .line 51
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 52
    const-string v0, "[]"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 53
    return-void

    .line 56
    :cond_4
    iget-object v4, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 57
    .local v4, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v3, p3

    invoke-virtual {v7, v4, v14, v3, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    const/4 v0, 0x0

    move-object v1, v0

    .line 61
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/16 v2, 0x5d

    const/16 v13, 0x2c

    const/16 v8, 0x5b

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v11, v8

    .line 67
    .local v11, "item":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 68
    :try_start_1
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 144
    .end local v0    # "i":I
    .end local v11    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    goto/16 :goto_9

    .line 71
    .restart local v0    # "i":I
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 72
    if-eqz v11, :cond_7

    .line 73
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v8, :cond_6

    .line 74
    :try_start_3
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    move v10, v2

    move-object v9, v5

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move v14, v13

    move-object v11, v4

    move-object v12, v6

    goto :goto_4

    .line 76
    :cond_6
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    move-object v1, v8

    .line 77
    new-instance v18, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, v18

    move-object v9, v4

    move-object v10, v14

    move-object/from16 v21, v11

    move-object v11, v3

    .end local v11    # "item":Ljava/lang/Object;
    .local v21, "item":Ljava/lang/Object;
    move-object/from16 v22, v12

    move/from16 v12, v19

    move v14, v13

    move/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v8, v18

    .line 78
    .local v8, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v8, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v10, v2

    move-object v2, v7

    move-object/from16 v3, v21

    move-object v11, v4

    move-object v4, v9

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object v9, v5

    move-object/from16 v5, v17

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v12, v6

    move v6, v15

    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_5
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 80
    .end local v8    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_4

    .line 82
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v21    # "item":Ljava/lang/Object;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .local v11, "item":Ljava/lang/Object;
    :cond_7
    move v10, v2

    move-object v9, v5

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move v14, v13

    move-object v11, v4

    move-object v12, v6

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v21    # "item":Ljava/lang/Object;
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 84
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 85
    .end local v21    # "item":Ljava/lang/Object;
    nop

    .line 66
    move-object/from16 v3, p3

    move-object v5, v9

    move v2, v10

    move-object v4, v11

    move-object v6, v12

    move v13, v14

    move-object/from16 v12, v22

    move-object/from16 v14, p2

    goto/16 :goto_2

    .line 87
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :cond_8
    move v10, v2

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 89
    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 90
    return-void

    .line 93
    .end local v0    # "i":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :cond_9
    move v10, v2

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    move v14, v13

    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_6
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v8, v1

    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v2, "size":I
    .local v8, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_5
    move v13, v2

    .end local v2    # "size":I
    .local v13, "size":I
    if-ge v0, v13, :cond_13

    .line 95
    :try_start_7
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    .line 96
    .local v6, "item":Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 100
    :cond_a
    if-nez v6, :cond_b

    .line 101
    const-string v1, "null"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_8

    .line 103
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    .line 105
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Integer;

    if-ne v5, v1, :cond_c

    .line 106
    move-object v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto/16 :goto_8

    .line 107
    :cond_c
    const-class v1, Ljava/lang/Long;

    if-ne v5, v1, :cond_e

    .line 108
    move-object v1, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 109
    .local v1, "val":J
    if-eqz v16, :cond_d

    .line 110
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 111
    const/16 v3, 0x4c

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 113
    :cond_d
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 115
    .end local v1    # "val":J
    :goto_6
    goto/16 :goto_8

    .line 116
    :cond_e
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_f

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 118
    .end local v8    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v7

    move-object v3, v6

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, v6

    move v6, v15

    .end local v6    # "item":Ljava/lang/Object;
    .local v8, "item":Ljava/lang/Object;
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 94
    move-object v8, v1

    goto/16 :goto_8

    .line 120
    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "item":Ljava/lang/Object;
    .local v8, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_f
    move-object/from16 v18, v5

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    iget-boolean v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-nez v1, :cond_10

    .line 121
    new-instance v19, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v5, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, v19

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v14, v6

    move/from16 v6, v20

    .end local v6    # "item":Ljava/lang/Object;
    .local v14, "item":Ljava/lang/Object;
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    move-object/from16 v1, v19

    .line 122
    .local v1, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v1, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .end local v1    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_7

    .line 125
    .end local v14    # "item":Ljava/lang/Object;
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_10
    move-object v14, v6

    .end local v6    # "item":Ljava/lang/Object;
    .restart local v14    # "item":Ljava/lang/Object;
    :goto_7
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 126
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_8

    .line 128
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    move-object v8, v1

    .line 129
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_12

    instance-of v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_12

    .line 132
    move-object v1, v8

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 133
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v7

    move-object v3, v14

    move-object/from16 v5, v17

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 134
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    goto :goto_8

    .line 135
    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, v8

    move-object v2, v7

    move-object v3, v14

    move-object/from16 v5, v17

    move v6, v15

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 94
    .end local v14    # "item":Ljava/lang/Object;
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move v2, v13

    const/16 v14, 0x2c

    goto/16 :goto_5

    .line 144
    .end local v0    # "i":I
    .end local v13    # "size":I
    :catchall_1
    move-exception v0

    goto :goto_9

    .line 142
    :cond_13
    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 144
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 145
    nop

    .line 146
    return-void

    .line 144
    .end local v8    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_9

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :catchall_3
    move-exception v0

    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    move-object v8, v1

    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v4    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v8    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v11    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v12    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :goto_9
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method
