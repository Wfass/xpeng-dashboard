.class Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;
.super Lcom/alibaba/fastjson2/JSONPathTypedMulti;
.source "JSONPathTypedMultiNames.java"


# instance fields
.field final fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

.field final namePaths:[Lcom/alibaba/fastjson2/JSONPath;

.field final names:[Ljava/lang/String;

.field final objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final prefix:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method constructor <init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    move-object v10, p3

    move-object/from16 v11, p6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    .line 32
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;-><init>([Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    move-object v0, p2

    .line 33
    iput-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    .line 34
    iput-object v10, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->namePaths:[Lcom/alibaba/fastjson2/JSONPath;

    .line 35
    array-length v0, v9

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 36
    :goto_0
    array-length v2, v9

    if-ge v1, v2, :cond_0

    .line 37
    aget-object v2, v10, v1

    check-cast v2, Lcom/alibaba/fastjson2/JSONPathSingleName;

    .line 38
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    .line 39
    iget-object v3, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [J

    if-eqz v11, :cond_2

    move v2, v0

    .line 43
    :goto_1
    array-length v3, v11

    if-ge v2, v3, :cond_2

    .line 44
    aget-wide v3, v11, v2

    sget-object v5, Lcom/alibaba/fastjson2/JSONPath$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 45
    aget-wide v3, v1, v2

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual/range {p4 .. p4}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    .line 51
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 52
    aget-object v3, v2, v0

    .line 53
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 54
    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v0

    goto :goto_3

    .line 55
    :cond_3
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    .line 56
    const-class v3, Ljava/lang/Character;

    aput-object v3, v2, v0

    goto :goto_3

    .line 57
    :cond_4
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 58
    const-class v3, Ljava/lang/Byte;

    aput-object v3, v2, v0

    goto :goto_3

    .line 59
    :cond_5
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    .line 60
    const-class v3, Ljava/lang/Short;

    aput-object v3, v2, v0

    goto :goto_3

    .line 61
    :cond_6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 62
    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v0

    goto :goto_3

    .line 63
    :cond_7
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_8

    .line 64
    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v0

    goto :goto_3

    .line 65
    :cond_8
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_9

    .line 66
    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v0

    goto :goto_3

    .line 67
    :cond_9
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_a

    .line 68
    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v0

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_b
    iget-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    array-length v0, v0

    .line 73
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v3

    iget-object v4, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    new-instance v5, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathTypedMultiNames$FuFpNmBfHmyYYrHLMEvt_JG5bNc;

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathTypedMultiNames$FuFpNmBfHmyYYrHLMEvt_JG5bNc;-><init>(I)V

    sget-object v0, Lcom/alibaba/fastjson2/-$$Lambda$JSONPathTypedMultiNames$0JJ_ulEb4rtS12TSzcZsruN6r6w;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$JSONPathTypedMultiNames$0JJ_ulEb4rtS12TSzcZsruN6r6w;

    move-object p1, v3

    move-object p2, v4

    move-object p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    .line 74
    invoke-virtual/range {p1 .. p6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectReader([Ljava/lang/String;[Ljava/lang/reflect/Type;[JLjava/util/function/Supplier;Lcom/alibaba/fastjson2/function/FieldConsumer;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    iput-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 81
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaders()[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    return-void
.end method

.method static synthetic lambda$new$0(I)[Ljava/lang/Object;
    .locals 0

    .line 78
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic lambda$new$1([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 79
    aput-object p2, p0, p1

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 102
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    check-cast p1, Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 105
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->names:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 111
    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->types:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v2

    if-eqz v3, :cond_7

    .line 119
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, v4, :cond_7

    .line 120
    const-class v5, Ljava/lang/Long;

    if-ne v4, v5, :cond_4

    .line 121
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    .line 122
    :cond_4
    const-class v5, Ljava/math/BigDecimal;

    if-ne v4, v5, :cond_5

    .line 123
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_1

    .line 124
    :cond_5
    const-class v5, [Ljava/lang/String;

    if-ne v4, v5, :cond_6

    .line 125
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 127
    :cond_6
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    :cond_7
    :goto_1
    aput-object v3, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 149
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input, expect \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRef()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
