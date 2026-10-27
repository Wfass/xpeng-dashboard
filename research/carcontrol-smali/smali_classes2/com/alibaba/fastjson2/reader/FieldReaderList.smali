.class public Lcom/alibaba/fastjson2/reader/FieldReaderList;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "FieldReaderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fieldClassHash:J

.field final itemClassHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p4

    move-object/from16 v13, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    .line 38
    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 39
    iput-object v15, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v0, p5

    .line 40
    iput-object v0, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClass:Ljava/lang/Class;

    .line 41
    iget-object v1, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClass:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClassHash:J

    if-nez p3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    iput-wide v2, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClassHash:J

    move-object/from16 v0, p9

    if-eqz v0, :cond_2

    .line 45
    const-class v1, Ljava/util/Date;

    if-ne v15, v1, :cond_2

    .line 46
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    move-object/from16 v2, p10

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, v14, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    :cond_2
    return-void
.end method


# virtual methods
.method public checkObjectAutoType(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 12

    const/16 v0, -0x6e

    .line 200
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v7

    .line 202
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v9

    .line 203
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 206
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    move-object v1, v11

    move-wide v2, v7

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    invoke-interface {v11, v1, v2, v9, v10}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 216
    :cond_1
    invoke-virtual {p1, v9, v10}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 222
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoType not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    move-object v1, p1

    move-wide v2, v7

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 227
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz v1, :cond_4

    .line 228
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 230
    new-instance v7, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemType:Ljava/lang/reflect/Type;

    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    move-object v0, v7

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    .line 234
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auotype not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 58
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getItemClassHash()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClassHash:J

    return-wide v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 10

    .line 140
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    .line 143
    new-array v2, v0, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v3

    move-object v5, p1

    .line 148
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_3

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v7

    .line 157
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 159
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    .line 161
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v0

    .line 172
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_5

    const-class v2, Ljava/lang/Number;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemType:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/Class;

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object p1

    const/16 v3, 0x2c

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const-string v3, ","

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 185
    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    .line 195
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 66
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v3, :cond_2

    .line 82
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Ljava/util/function/Function;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_2
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz v3, :cond_3

    .line 85
    invoke-interface {v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Ljava/util/function/Function;

    move-result-object v1

    .line 89
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_7

    .line 91
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 93
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object v11

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/4 v0, 0x0

    .line 96
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 111
    invoke-interface {v1, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Collection;

    .line 113
    :cond_4
    invoke-virtual {p0, p2, v11}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 100
    :cond_5
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson2/JSONReader;->readReference(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v4

    move-object v6, p1

    .line 105
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-interface {v11, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_a

    .line 117
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v0, :cond_a

    .line 118
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_8

    .line 119
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 120
    :cond_8
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 121
    :goto_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 122
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_9

    .line 124
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 126
    :cond_9
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 132
    :cond_a
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 133
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 134
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->features:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 135
    :goto_4
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
