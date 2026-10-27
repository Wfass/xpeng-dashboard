.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field protected final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    .line 23
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 29
    .local v3, "enumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Enum;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v0, v0

    if-ge v5, v0, :cond_7

    .line 30
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v6, v0, v5

    .line 31
    .local v6, "e":Ljava/lang/Enum;
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v8, v0

    .line 35
    .local v8, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v0, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v8, v9

    .line 37
    if-eqz v8, :cond_0

    .line 38
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, "jsonFieldName":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v10, :cond_0

    .line 40
    move-object v0, v9

    .line 45
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "jsonFieldName":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    move-object v7, v0

    .end local v0    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 47
    :goto_1
    const-wide v9, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 48
    .local v9, "hash":J
    const-wide v11, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 49
    .local v11, "hash_lower":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const-wide v14, 0x100000001b3L

    if-ge v0, v13, :cond_2

    .line 50
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 52
    .local v13, "ch":C
    move/from16 v17, v5

    int-to-long v4, v13

    .end local v5    # "i":I
    .local v17, "i":I
    xor-long/2addr v4, v9

    .line 53
    .end local v9    # "hash":J
    .local v4, "hash":J
    const/16 v9, 0x41

    if-lt v13, v9, :cond_1

    const/16 v9, 0x5a

    if-gt v13, v9, :cond_1

    add-int/lit8 v9, v13, 0x20

    goto :goto_3

    :cond_1
    move v9, v13

    :goto_3
    int-to-long v9, v9

    xor-long/2addr v9, v11

    .line 55
    .end local v11    # "hash_lower":J
    .local v9, "hash_lower":J
    mul-long/2addr v4, v14

    .line 56
    mul-long v11, v9, v14

    .line 49
    .end local v9    # "hash_lower":J
    .end local v13    # "ch":C
    .restart local v11    # "hash_lower":J
    add-int/lit8 v0, v0, 0x1

    move-wide v9, v4

    move/from16 v5, v17

    goto :goto_2

    .line 59
    .end local v0    # "j":I
    .end local v4    # "hash":J
    .end local v17    # "i":I
    .restart local v5    # "i":I
    .local v9, "hash":J
    :cond_2
    move/from16 v17, v5

    .end local v5    # "i":I
    .restart local v17    # "i":I
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    .line 61
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3
    if-eqz v8, :cond_6

    .line 65
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    aget-object v13, v0, v5

    .line 66
    .local v13, "alterName":Ljava/lang/String;
    const-wide v18, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 67
    .local v18, "alterNameHash":J
    move-wide/from16 v14, v18

    const/16 v18, 0x0

    .local v14, "alterNameHash":J
    .local v18, "j":I
    :goto_5
    move/from16 v20, v18

    .end local v18    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v2, v20

    if-ge v2, v0, :cond_4

    .line 68
    .end local v20    # "j":I
    .local v2, "j":I
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 69
    .local v0, "ch":C
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    int-to-long v7, v0

    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v22, "name":Ljava/lang/String;
    .local v23, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    xor-long/2addr v7, v14

    .line 70
    .end local v14    # "alterNameHash":J
    .local v7, "alterNameHash":J
    const-wide v18, 0x100000001b3L

    mul-long v14, v7, v18

    .line 67
    .end local v0    # "ch":C
    .end local v7    # "alterNameHash":J
    .restart local v14    # "alterNameHash":J
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "j":I
    .local v0, "j":I
    move/from16 v18, v0

    move-object/from16 v0, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v2, p1

    goto :goto_5

    .line 72
    .end local v0    # "j":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v7, "name":Ljava/lang/String;
    .restart local v8    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const-wide v18, 0x100000001b3L

    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    cmp-long v0, v14, v9

    if-eqz v0, :cond_5

    cmp-long v0, v14, v11

    if-eqz v0, :cond_5

    .line 73
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v13    # "alterName":Ljava/lang/String;
    .end local v14    # "alterNameHash":J
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v14, v18

    move-object/from16 v0, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v2, p1

    goto :goto_4

    .line 29
    .end local v6    # "e":Ljava/lang/Enum;
    .end local v9    # "hash":J
    .end local v11    # "hash_lower":J
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_6
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .local v0, "i":I
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    .line 81
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "i":I
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 83
    .local v4, "h":Ljava/lang/Long;
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    add-int/lit8 v6, v0, 0x1

    .local v6, "i":I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v0

    .line 84
    .end local v0    # "i":I
    .end local v4    # "h":Ljava/lang/Long;
    nop

    .line 82
    move v0, v6

    goto :goto_6

    .line 85
    .end local v6    # "i":I
    .restart local v0    # "i":I
    :cond_8
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 88
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Enum;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    .line 89
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v0, v16

    .end local v16    # "i":I
    .restart local v0    # "i":I
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 90
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    aget-wide v4, v2, v0

    .line 91
    .local v4, "hash":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 92
    .local v2, "e":Ljava/lang/Enum;
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aput-object v2, v6, v0

    .line 89
    .end local v2    # "e":Ljava/lang/Enum;
    .end local v4    # "hash":J
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_7

    .line 94
    .end local v16    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    .line 118
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 119
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 120
    .local v1, "token":I
    const/4 v2, 0x2

    const/16 v3, 0x10

    if-ne v1, v2, :cond_1

    .line 121
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .line 122
    .local v2, "intValue":I
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 124
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v3, v3, v2

    return-object v3

    .line 125
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse enum "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v2    # "intValue":I
    :cond_1
    const/4 v2, 0x4

    const/4 v4, 0x0

    if-ne v1, v2, :cond_8

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 134
    return-object v4

    .line 137
    :cond_2
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 138
    .local v3, "hash":J
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 139
    .local v5, "hash_lower":J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 140
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 142
    .local v8, "ch":C
    int-to-long v9, v8

    xor-long/2addr v3, v9

    .line 143
    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    const/16 v9, 0x5a

    if-gt v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x20

    goto :goto_1

    :cond_3
    move v9, v8

    :goto_1
    int-to-long v9, v9

    xor-long/2addr v5, v9

    .line 145
    const-wide v9, 0x100000001b3L

    mul-long/2addr v3, v9

    .line 146
    mul-long/2addr v5, v9

    .line 139
    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 149
    .end local v7    # "j":I
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v7

    .line 150
    .local v7, "e":Ljava/lang/Enum;
    if-nez v7, :cond_5

    cmp-long v8, v5, v3

    if-eqz v8, :cond_5

    .line 151
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v8

    move-object v7, v8

    .line 154
    :cond_5
    if-nez v7, :cond_7

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    .line 155
    :cond_6
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not match enum value, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 157
    :cond_7
    :goto_2
    return-object v7

    .line 158
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "hash":J
    .end local v5    # "hash_lower":J
    .end local v7    # "e":Ljava/lang/Enum;
    :cond_8
    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 162
    return-object v4

    .line 164
    .end local v2    # "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 167
    .restart local v2    # "value":Ljava/lang/Object;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse enum "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v1    # "token":I
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .locals 2
    .param p1, "hashCode"    # J

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return-object v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 103
    .local v0, "enumIndex":I
    if-gez v0, :cond_1

    .line 104
    return-object v1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 176
    const/4 v0, 0x2

    return v0
.end method

.method public valueOf(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method
