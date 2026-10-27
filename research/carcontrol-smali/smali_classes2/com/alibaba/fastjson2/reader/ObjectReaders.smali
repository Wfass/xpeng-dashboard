.class public Lcom/alibaba/fastjson2/reader/ObjectReaders;
.super Ljava/lang/Object;
.source "ObjectReaders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6

    .line 104
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReader(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6

    .line 108
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TV;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 174
    new-instance v14, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectFunc;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object v14
.end method

.method public static fieldReaderBool(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ObjBoolConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ObjBoolConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 112
    new-instance v6, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderBoolValFunc;-><init>(Ljava/lang/String;ILcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjBoolConsumer;)V

    return-object v6
.end method

.method public static fieldReaderByte(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ObjByteConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ObjByteConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 116
    new-instance v6, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderInt8ValueFunc;-><init>(Ljava/lang/String;ILcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjByteConsumer;)V

    return-object v6
.end method

.method public static fieldReaderChar(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ObjCharConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ObjCharConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 132
    new-instance v8, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/reader/FieldReaderCharValueFunc;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Character;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjCharConsumer;)V

    return-object v8
.end method

.method public static fieldReaderDouble(Ljava/lang/String;Ljava/util/function/ObjDoubleConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 140
    new-instance v7, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderDoubleValueFunc;-><init>(Ljava/lang/String;ILjava/lang/Double;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/ObjDoubleConsumer;)V

    return-object v7
.end method

.method public static fieldReaderFloat(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ObjFloatConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ObjFloatConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 136
    new-instance v7, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderFloatValueFunc;-><init>(Ljava/lang/String;ILjava/lang/Float;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjFloatConsumer;)V

    return-object v7
.end method

.method public static fieldReaderInt(Ljava/lang/String;Ljava/util/function/ObjIntConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ObjIntConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 124
    new-instance v7, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueFunc;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/ObjIntConsumer;)V

    return-object v7
.end method

.method public static fieldReaderList(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReaderList(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReaderList(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TV;>;>;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 206
    new-instance v6, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;-><init>(Ljava/util/function/Supplier;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/function/BiConsumer;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-object v6
.end method

.method public static fieldReaderList(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TV;>;>;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TV;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 197
    new-instance v6, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;-><init>(Ljava/util/function/Supplier;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/function/BiConsumer;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-object v6
.end method

.method public static fieldReaderListStr(Ljava/lang/String;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 213
    new-instance v6, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;

    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;

    const-class v4, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/FieldReaderListFuncImpl;-><init>(Ljava/util/function/Supplier;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/function/BiConsumer;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-object v6
.end method

.method public static fieldReaderLong(Ljava/lang/String;Ljava/util/function/ObjLongConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ObjLongConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 128
    new-instance v7, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueFunc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueFunc;-><init>(Ljava/lang/String;ILjava/lang/Long;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/util/function/ObjLongConsumer;)V

    return-object v7
.end method

.method public static fieldReaderMap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/BiConsumer<",
            "TT;TM;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 234
    new-instance v14, Lcom/alibaba/fastjson2/reader/FieldReaderObject;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    move-object/from16 v3, p1

    .line 236
    invoke-static {v3, v0}, Lcom/alibaba/fastjson2/TypeReference;->parametricType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14
.end method

.method public static fieldReaderShort(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ObjShortConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ObjShortConsumer<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 120
    new-instance v11, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/FieldReaderInt16ValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ObjShortConsumer;)V

    return-object v11
.end method

.method public static fieldReaderString(Ljava/lang/String;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/FieldReader;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReaderWithField(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 1

    .line 251
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 252
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReaderWithField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 259
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 260
    sget-object p2, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {p2, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fieldReaderWithMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 267
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getSetter(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 268
    sget-object p2, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {p2, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p0

    return-object p0
.end method

.method public static fromBigDecimal(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromByteArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    const-string v1, "base64"

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromCharArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[C",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromDoubleArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[D",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromFloatArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[F",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromIntArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromLongArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[J",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromShortArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "[S",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic lambda$gDKEcGxnaIgU7sqXbIS8kj9NQtE()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static varargs objectReader(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectReader(Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderNoneDefaultConstructor(Ljava/lang/Class;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static ofInt(Ljava/util/function/IntFunction;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;-><init>(Ljava/lang/Class;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public static ofLong(Ljava/util/function/LongFunction;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;-><init>(Ljava/lang/Class;Ljava/util/function/LongFunction;)V

    return-object v0
.end method

.method public static ofReflect(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static ofString(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0
.end method
