.class public final Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplMap.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

.field static final INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

.field static final TYPE_HASH_JSONObject1O:J

.field static final TYPE_NAME_JSONObject1O:[B


# instance fields
.field final features:J

.field final jsonObject1:Z

.field final jsonObject1InnerMap:Ljava/lang/reflect/Field;

.field final jsonObject1InnerMapOffset:J

.field final jsonbTypeInfo:[B

.field final keyType:Ljava/lang/reflect/Type;

.field volatile keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final objectClass:Ljava/lang/Class;

.field final objectType:Ljava/lang/reflect/Type;

.field final typeInfoUTF16:[C

.field final typeInfoUTF8:[B

.field final typeNameHash:J

.field final valueType:Ljava/lang/reflect/Type;

.field final valueTypeRefDetect:Z

.field volatile valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "JO10"

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_NAME_JSONObject1O:[B

    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_HASH_JSONObject1O:J

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/Object;

    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    const-wide/16 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 29
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Object;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    sget-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p1

    move-wide v5, p2

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyType:Ljava/lang/reflect/Type;

    .line 62
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 63
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    .line 64
    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    .line 65
    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result p2

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    .line 73
    :goto_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 74
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\"@type\":\""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF16:[C

    .line 76
    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF8:[B

    const-string p4, "JO1"

    .line 78
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1:Z

    .line 79
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonbTypeInfo:[B

    .line 80
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeNameHash:J

    const-wide/16 p5, -0x1

    if-eqz p4, :cond_1

    const-string p2, "map"

    .line 83
    invoke-static {p3, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_2

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p5

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    .line 91
    :cond_2
    :goto_1
    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMapOffset:J

    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 8

    .line 95
    const-class v0, Lcom/alibaba/fastjson2/JSONObject;

    if-ne p0, v0, :cond_0

    .line 96
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    return-object p0

    .line 99
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 100
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    return-object p0

    .line 103
    :cond_1
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-object v7
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 3

    .line 107
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 108
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/Class;J)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 9

    .line 114
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 116
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 117
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 119
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 120
    aget-object v0, v0, v2

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v4, v3

    .line 124
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-wide/16 v7, 0x0

    move-object v2, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-object v0
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p4

    move-wide/from16 v2, p5

    .line 388
    iget-boolean v4, v8, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 393
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v10

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 402
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    if-ne v1, v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v4, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteMapTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 403
    :cond_2
    invoke-virtual {v8, v9, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 408
    :cond_4
    move-object v1, v9

    check-cast v1, Ljava/util/Map;

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v4

    or-long v11, v2, v4

    .line 411
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v11

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    if-eqz v2, :cond_5

    .line 412
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/LinkedHashMap;

    if-eq v2, v3, :cond_5

    .line 413
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 417
    :cond_5
    iget-object v2, v8, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v15, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 418
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v1, "null"

    if-nez v6, :cond_c

    .line 423
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v13

    if-eqz v2, :cond_6

    if-nez v7, :cond_7

    .line 425
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_7
    instance-of v1, v7, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 427
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_8
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    and-long/2addr v1, v11

    cmp-long v1, v1, v13

    if-eqz v1, :cond_9

    .line 430
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_9
    instance-of v1, v7, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 433
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    goto :goto_1

    .line 434
    :cond_a
    instance-of v1, v7, Ljava/lang/Long;

    if-eqz v1, :cond_b

    .line 435
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    goto :goto_1

    .line 437
    :cond_b
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameAny(Ljava/lang/Object;)V

    .line 441
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 445
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v11

    cmp-long v2, v2, v13

    if-eqz v2, :cond_e

    .line 446
    instance-of v2, v6, Ljava/util/Collection;

    if-eqz v2, :cond_d

    move-object v2, v6

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_0

    .line 449
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 455
    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    .line 456
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    const/4 v4, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v5, v17

    move-object/from16 p3, v6

    move-object v13, v7

    move-wide/from16 v6, v18

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    :cond_f
    move-object/from16 p3, v6

    move-object v13, v7

    if-nez v13, :cond_10

    .line 458
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    .line 459
    :cond_10
    instance-of v1, v13, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 460
    move-object v7, v13

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    move-object v4, v7

    goto :goto_3

    .line 462
    :cond_11
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    and-long/2addr v1, v11

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 463
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_3

    .line 465
    :cond_12
    instance-of v1, v13, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 466
    move-object v7, v13

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    goto :goto_2

    .line 467
    :cond_13
    instance-of v1, v13, Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 468
    move-object v7, v13

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 469
    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    goto :goto_2

    .line 471
    :cond_14
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameAny(Ljava/lang/Object;)V

    :goto_2
    const/4 v4, 0x0

    .line 475
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 477
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 478
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_15

    move-object/from16 v14, p3

    .line 479
    move-object v6, v14

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_4
    const-wide/16 v13, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v14, p3

    .line 481
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_16

    .line 482
    move-object v6, v14

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_4

    .line 484
    :cond_16
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_18

    .line 485
    iget-wide v2, v15, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v5, 0x4

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_17

    .line 486
    move-object v6, v14

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_4

    .line 488
    :cond_17
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 489
    const-class v5, Ljava/lang/Long;

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide v6, v11

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    .line 492
    :cond_18
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_19

    .line 493
    move-object v6, v14

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_4

    .line 495
    :cond_19
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_1c

    .line 496
    iget-wide v2, v15, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v17, 0x0

    cmp-long v2, v2, v17

    if-nez v2, :cond_1a

    .line 497
    move-object v6, v14

    check-cast v6, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {v8, v6, v11, v12, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_5

    .line 499
    :cond_1a
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 500
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v13

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :cond_1b
    :goto_5
    move-wide/from16 v13, v17

    goto/16 :goto_0

    :cond_1c
    const-wide/16 v17, 0x0

    .line 507
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1e

    .line 508
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_1d

    .line 509
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_6

    .line 511
    :cond_1d
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 513
    :goto_6
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_8

    .line 515
    :cond_1e
    const-class v2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v1, v2, :cond_1f

    .line 516
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    :goto_7
    move v2, v3

    goto :goto_8

    .line 518
    :cond_1f
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-ne v1, v2, :cond_20

    .line 519
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    goto :goto_7

    .line 521
    :cond_20
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v1, v2, :cond_21

    .line 522
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    goto :goto_7

    .line 524
    :cond_21
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_ARRAY_1x:Ljava/lang/Class;

    if-ne v1, v2, :cond_22

    .line 525
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    goto :goto_7

    .line 528
    :cond_22
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 529
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    move-result v2

    :goto_8
    if-eqz v10, :cond_23

    if-eqz v4, :cond_23

    if-nez v2, :cond_23

    const/4 v3, 0x1

    :cond_23
    move/from16 v19, v3

    if-eqz v19, :cond_25

    if-ne v14, v9, :cond_24

    const-string v1, ".."

    .line 536
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    goto :goto_5

    .line 540
    :cond_24
    invoke-virtual {v8, v4, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 542
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_5

    .line 548
    :cond_25
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v13

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v19, :cond_1b

    .line 551
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_5

    .line 555
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 133
    check-cast p2, Ljava/util/Map;

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result p3

    .line 137
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Ljava/lang/String;

    .line 139
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 151
    const-class p5, Ljava/lang/String;

    if-ne p4, p5, :cond_2

    .line 152
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 155
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p4

    move-wide/from16 v2, p5

    .line 164
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    if-ne v1, v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v4, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteMapTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    :cond_0
    invoke-virtual {v8, v9, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_3

    .line 169
    iget-wide v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMapOffset:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 170
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMapOffset:J

    invoke-virtual {v2, v9, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 171
    instance-of v2, v2, Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 174
    :cond_2
    :try_start_0
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    instance-of v2, v2, Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 182
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_NAME_JSONObject1O:[B

    sget-wide v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_HASH_JSONObject1O:J

    invoke-virtual {v8, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    goto :goto_1

    .line 184
    :cond_4
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonbTypeInfo:[B

    iget-wide v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeNameHash:J

    invoke-virtual {v8, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 188
    :cond_5
    :goto_1
    move-object v11, v9

    check-cast v11, Ljava/util/Map;

    .line 190
    iget-object v2, v8, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 193
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 194
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    const/4 v12, 0x1

    if-ne v1, v4, :cond_6

    goto :goto_2

    .line 196
    :cond_6
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_7

    .line 197
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 198
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 199
    aget-object v3, v1, v12

    :cond_7
    :goto_2
    move-object v13, v3

    .line 203
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v14

    .line 204
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    and-long/2addr v3, v14

    const-wide/16 v16, 0x0

    cmp-long v1, v3, v16

    if-eqz v1, :cond_8

    move/from16 v18, v12

    goto :goto_3

    :cond_8
    const/16 v18, 0x0

    .line 205
    :goto_3
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v14

    cmp-long v1, v3, v16

    if-eqz v1, :cond_9

    move v6, v12

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    .line 206
    :goto_4
    iget-object v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 210
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v14

    cmp-long v1, v1, v16

    if-eqz v1, :cond_a

    move/from16 v19, v12

    goto :goto_5

    :cond_a
    const/16 v19, 0x0

    .line 213
    :goto_5
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v4, v21

    move-object/from16 v22, v4

    const/4 v5, 0x0

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 214
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz v18, :cond_10

    .line 221
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 222
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    move-object/from16 v27, v4

    move/from16 v24, v5

    move-object v12, v7

    move-object/from16 p5, v13

    move v13, v6

    goto/16 :goto_a

    .line 224
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v19, :cond_c

    .line 226
    invoke-static {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_c

    move/from16 v23, v12

    goto :goto_7

    :cond_c
    const/16 v23, 0x0

    :goto_7
    if-eqz v23, :cond_d

    .line 230
    invoke-virtual {v8, v5, v3}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    const-string v12, "key"

    .line 231
    invoke-virtual {v8, v12, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_d
    move-object/from16 v12, v21

    :goto_8
    if-eqz v12, :cond_e

    .line 234
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    move-object/from16 p4, v2

    move-object v10, v3

    move-object/from16 v27, v4

    move/from16 v24, v5

    move-object v12, v7

    move-object/from16 p5, v13

    move v13, v6

    goto :goto_9

    .line 236
    :cond_e
    invoke-virtual {v7, v1, v1, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v12, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 p4, v2

    move-object/from16 v2, p1

    move-object v10, v3

    move-object/from16 v3, p4

    move-object/from16 v27, v4

    move-object v4, v12

    move v12, v5

    move-object/from16 v5, v24

    move/from16 v24, v12

    move-object/from16 p5, v13

    move v13, v6

    move-object v12, v7

    move-wide/from16 v6, v25

    .line 237
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_9
    if-eqz v23, :cond_f

    .line 240
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    move-object/from16 v10, p4

    .line 241
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 244
    :cond_f
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-wide/from16 v28, v14

    :goto_b
    move/from16 v6, v24

    goto :goto_c

    :cond_10
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 p5, v13

    move v13, v6

    move v6, v5

    move-wide/from16 v28, v14

    :goto_c
    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_11
    move-object v10, v2

    move-object/from16 v27, v4

    move/from16 v24, v5

    move-object v12, v7

    move-object/from16 p5, v13

    move v13, v6

    .line 249
    instance-of v6, v10, Ljava/lang/String;

    if-nez v6, :cond_15

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v14

    cmp-long v2, v2, v16

    if-nez v2, :cond_12

    goto :goto_d

    :cond_12
    if-nez v10, :cond_13

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-wide/from16 v28, v14

    move-object v14, v1

    move v15, v6

    goto :goto_f

    :cond_13
    if-eqz v19, :cond_14

    .line 271
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    .line 273
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 274
    invoke-virtual {v12, v2, v2, v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v25, 0x0

    move-object v7, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v10

    move-wide/from16 v28, v14

    move v15, v6

    move-object v14, v7

    move-wide/from16 v6, v25

    .line 275
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v19, :cond_18

    .line 277
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_f

    :cond_15
    :goto_d
    move-wide/from16 v28, v14

    move-object v14, v1

    move v15, v6

    if-eqz v15, :cond_16

    .line 252
    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    goto :goto_e

    .line 254
    :cond_16
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :goto_e
    iget-object v1, v8, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v1, :cond_17

    .line 258
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 260
    instance-of v1, v14, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 261
    move-object v1, v14

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    goto :goto_b

    .line 265
    :cond_17
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 281
    :cond_18
    :goto_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 282
    const-class v1, Ljava/lang/String;

    if-ne v4, v1, :cond_19

    .line 283
    move-object v1, v14

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 287
    :cond_19
    const-class v1, Ljava/lang/Integer;

    if-ne v4, v1, :cond_1a

    .line 288
    move-object v1, v14

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto/16 :goto_b

    .line 292
    :cond_1a
    const-class v1, Ljava/lang/Long;

    if-ne v4, v1, :cond_1b

    .line 293
    move-object v1, v14

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto/16 :goto_b

    .line 299
    :cond_1b
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    if-ne v4, v1, :cond_1c

    if-eqz v19, :cond_1d

    .line 300
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    if-eqz v1, :cond_1d

    goto :goto_10

    :cond_1c
    if-eqz v19, :cond_1d

    .line 302
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_10
    const/4 v1, 0x1

    goto :goto_11

    :cond_1d
    const/4 v1, 0x0

    :goto_11
    move v3, v1

    if-eqz v3, :cond_23

    if-ne v14, v9, :cond_1e

    const-string v1, ".."

    .line 307
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1e
    if-eqz v15, :cond_1f

    .line 313
    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    move v2, v3

    move/from16 v6, v24

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_13

    .line 314
    :cond_1f
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 315
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 317
    :cond_20
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    instance-of v1, v11, Ljava/util/SortedMap;

    if-nez v1, :cond_21

    instance-of v1, v11, Ljava/util/LinkedHashMap;

    if-nez v1, :cond_21

    .line 319
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v15, 0x0

    invoke-virtual {v8, v1, v15}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    move v2, v15

    move-object/from16 v1, v21

    move/from16 v6, v24

    const/4 v3, 0x1

    goto :goto_13

    :cond_21
    const/4 v15, 0x0

    move/from16 v6, v24

    .line 323
    invoke-virtual {v8, v6, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move v3, v15

    :goto_13
    if-eqz v1, :cond_22

    .line 328
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :goto_14
    move v10, v6

    move-object/from16 v4, v27

    const/4 v2, 0x1

    goto/16 :goto_19

    :cond_22
    move/from16 v24, v2

    move/from16 v23, v3

    goto :goto_15

    :cond_23
    move/from16 v6, v24

    const/4 v15, 0x0

    move/from16 v24, v3

    move/from16 v23, v15

    .line 335
    :goto_15
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    if-ne v4, v1, :cond_24

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v1, :cond_24

    .line 336
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_17

    :cond_24
    move-object/from16 v1, v27

    if-ne v1, v4, :cond_25

    move-object/from16 v27, v1

    move-object/from16 v1, v22

    goto :goto_17

    .line 340
    :cond_25
    const-class v2, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v4, v2, :cond_26

    .line 341
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    goto :goto_16

    .line 342
    :cond_26
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-ne v4, v2, :cond_27

    .line 343
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    goto :goto_16

    .line 344
    :cond_27
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v4, v2, :cond_28

    .line 345
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    goto :goto_16

    .line 346
    :cond_28
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_ARRAY_1x:Ljava/lang/Class;

    if-ne v4, v2, :cond_29

    .line 347
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    goto :goto_16

    .line 349
    :cond_29
    invoke-virtual {v12, v4, v4, v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    :goto_16
    if-nez v22, :cond_2a

    move-object/from16 v22, v2

    move-object v1, v4

    .line 357
    :cond_2a
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    if-ne v4, v3, :cond_2b

    .line 358
    iput-object v2, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_2b
    move-object/from16 v27, v1

    move-object v1, v2

    .line 362
    :goto_17
    iget-wide v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v25, v4

    move-object v4, v10

    move-object/from16 v5, p5

    move v10, v6

    move-wide/from16 v6, v25

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v23, :cond_2c

    .line 365
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_18

    :cond_2c
    const/4 v2, 0x1

    if-eqz v24, :cond_2d

    .line 368
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_2d
    :goto_18
    move-object/from16 v4, v27

    :goto_19
    add-int/lit8 v5, v10, 0x1

    move-object v7, v12

    move v6, v13

    move-wide/from16 v14, v28

    move-object/from16 v13, p5

    move v12, v2

    goto/16 :goto_6

    .line 373
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 1

    .line 378
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF8:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF16:[C

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 21

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-nez v8, :cond_0

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 565
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 566
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v1

    or-long v9, p5, v1

    .line 569
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v9

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-eqz v1, :cond_1

    .line 570
    instance-of v1, v0, Ljava/util/SortedMap;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    if-eq v1, v2, :cond_1

    .line 571
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 575
    :cond_1
    iget-object v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 577
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 579
    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 582
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    move-result-object v13

    .line 583
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v14

    .line 584
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v15

    .line 585
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    move-result-object v5

    .line 586
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;

    move-result-object v6

    .line 587
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isEnabled(J)Z

    move-result v16

    .line 589
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v16, :cond_3

    goto :goto_0

    .line 595
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 600
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v13, :cond_5

    .line 604
    invoke-interface {v13, v7, v8, v0}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v14, :cond_6

    .line 610
    invoke-interface {v14, v8, v0, v1}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v5, :cond_7

    .line 614
    invoke-interface {v5, v8, v0, v1}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v15, :cond_8

    .line 620
    invoke-interface {v15, v8, v0, v1}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_8
    move-object v2, v1

    if-nez v2, :cond_9

    .line 624
    invoke-virtual {v7, v9, v10}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v3

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v11

    if-nez v1, :cond_a

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    goto :goto_0

    :cond_9
    move-object/from16 p5, v5

    move-object/from16 p6, v6

    .line 629
    :cond_a
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v2, :cond_b

    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object/from16 v20, p5

    move-object/from16 v11, p6

    goto :goto_2

    .line 635
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 636
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    move-object/from16 v5, p0

    .line 637
    iget-wide v3, v5, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    move-object/from16 v1, p1

    move-wide/from16 v18, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v20, p5

    move-object/from16 v11, p6

    move-wide/from16 v5, v18

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    move-object v6, v11

    move-object/from16 v5, v20

    const-wide/16 v11, 0x0

    goto/16 :goto_0

    :cond_c
    move-object v11, v6

    if-eqz v11, :cond_d

    .line 642
    invoke-virtual {v11, v7, v8}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 645
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
