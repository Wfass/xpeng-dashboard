.class Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "FieldReaderCollectionMethodReadOnly.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 15

    move-object/from16 v14, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 29
    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 31
    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, v14

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 33
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 34
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    .line 37
    iput-object v0, v1, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p1, v0, :cond_9

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_9

    .line 56
    invoke-interface {p1, p2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Collections$UnmodifiableRandomAccessList"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "java.util.Arrays$ArrayList"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "java.util.Collections$SingletonList"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "java.util.ImmutableCollections$"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne p2, p1, :cond_3

    return-void

    .line 76
    :cond_3
    check-cast p2, Ljava/util/Collection;

    .line 77
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_4
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 84
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 85
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_5

    .line 87
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemType:Ljava/lang/reflect/Type;

    .line 88
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v0, Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v0

    .line 93
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p2, :cond_8

    .line 97
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void

    .line 57
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p2, :cond_a

    .line 58
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_a
    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldType:Ljava/lang/reflect/Type;

    .line 111
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 113
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldType:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->fieldName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 116
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderCollectionMethodReadOnly;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
