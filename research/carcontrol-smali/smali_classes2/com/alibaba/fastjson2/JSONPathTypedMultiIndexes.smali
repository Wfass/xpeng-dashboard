.class final Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;
.super Lcom/alibaba/fastjson2/JSONPathTypedMulti;
.source "JSONPathTypedMultiIndexes.java"


# instance fields
.field final duplicate:Z

.field final indexPaths:[Lcom/alibaba/fastjson2/JSONPath;

.field final indexes:[I

.field final maxIndex:I

.field final prefix:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method constructor <init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V
    .locals 10

    move-object v8, p0

    move-object v9, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;-><init>([Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    move-object v0, p2

    .line 29
    iput-object v0, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    .line 30
    iput-object v9, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexPaths:[Lcom/alibaba/fastjson2/JSONPath;

    move-object v0, p1

    .line 31
    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 32
    :goto_0
    array-length v4, v9

    if-ge v3, v4, :cond_0

    .line 33
    aget-object v4, v9, v3

    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    .line 34
    iget v4, v4, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput-object v1, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    const/4 v3, -0x1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_4

    .line 41
    aget v6, v1, v4

    if-nez v4, :cond_1

    move v3, v6

    goto :goto_2

    .line 45
    :cond_1
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2
    move v7, v2

    :goto_3
    if-ge v7, v0, :cond_3

    if-nez v5, :cond_3

    if-eq v7, v4, :cond_2

    .line 49
    aget v9, v1, v7

    if-ne v6, v9, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_4
    iput-boolean v5, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->duplicate:Z

    .line 56
    iput v3, v8, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->maxIndex:I

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 72
    :cond_1
    instance-of v1, p1, Ljava/util/List;

    const-string v2, ", msg : "

    const-string v3, "jsonpath eval path, path : "

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 73
    check-cast p1, Ljava/util/List;

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length v5, v1

    if-ge v4, v5, :cond_e

    .line 75
    aget v1, v1, v4

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 77
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->types:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v4

    if-eqz v1, :cond_6

    .line 79
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v5, :cond_6

    .line 80
    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_3

    .line 81
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    .line 82
    :cond_3
    const-class v6, Ljava/math/BigDecimal;

    if-ne v5, v6, :cond_4

    .line 83
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_2

    .line 84
    :cond_4
    const-class v6, [Ljava/lang/String;

    if-ne v5, v6, :cond_5

    .line 85
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 87
    :cond_5
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    :cond_6
    :goto_2
    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 92
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->ignoreError(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 98
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v1, v1

    if-ge v4, v1, :cond_e

    .line 99
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexPaths:[Lcom/alibaba/fastjson2/JSONPath;

    aget-object v1, v1, v4

    .line 100
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->types:[Ljava/lang/reflect/Type;

    aget-object v5, v5, v4

    .line 102
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v5, :cond_c

    .line 104
    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_9

    .line 105
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    .line 106
    :cond_9
    const-class v6, Ljava/math/BigDecimal;

    if-ne v5, v6, :cond_a

    .line 107
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_5

    .line 108
    :cond_a
    const-class v6, [Ljava/lang/String;

    if-ne v5, v6, :cond_b

    .line 109
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 111
    :cond_b
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    :cond_c
    :goto_5
    aput-object v1, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 116
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->ignoreError(I)Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 117
    :cond_d
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_e
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 11

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->prefix:Lcom/alibaba/fastjson2/JSONPath;

    instance-of v1, v0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 133
    check-cast v0, Lcom/alibaba/fastjson2/JSONPathSingleName;

    .line 134
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-nez v5, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 136
    :cond_3
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

    .line 153
    :cond_4
    instance-of v1, v0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    if-eqz v1, :cond_6

    .line 154
    check-cast v0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    iget v0, v0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v1

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_5

    if-ge v5, v1, :cond_5

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    :cond_6
    if-eqz v0, :cond_7

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 168
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    move v5, v3

    .line 170
    :goto_3
    iget v6, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->maxIndex:I

    if-gt v5, v6, :cond_11

    if-ge v5, v0, :cond_11

    .line 171
    iget-boolean v6, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-nez v6, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_a

    :cond_8
    move v6, v3

    .line 176
    :goto_4
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length v8, v7

    if-ge v6, v8, :cond_a

    .line 177
    aget v7, v7, v6

    if-ne v7, v5, :cond_9

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    move-object v6, v2

    :goto_5
    if-nez v6, :cond_b

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_9

    .line 187
    :cond_b
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->types:[Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    .line 190
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v8

    .line 192
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->ignoreError(I)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object v8, v2

    .line 197
    :goto_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-object v8, v1, v9

    .line 199
    iget-boolean v9, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->duplicate:Z

    if-nez v9, :cond_c

    goto :goto_9

    .line 203
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    :goto_7
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->indexes:[I

    array-length v10, v9

    if-ge v6, v10, :cond_f

    .line 204
    aget v9, v9, v6

    if-ne v9, v5, :cond_e

    .line 205
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiIndexes;->types:[Ljava/lang/reflect/Type;

    aget-object v9, v9, v6

    if-ne v9, v7, :cond_d

    move-object v9, v8

    goto :goto_8

    .line 210
    :cond_d
    invoke-static {v8, v9}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 212
    :goto_8
    aput-object v9, v1, v6

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    :cond_10
    throw v8

    :cond_11
    :goto_a
    return-object v1
.end method
