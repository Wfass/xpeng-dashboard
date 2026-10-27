.class public Lcom/alibaba/fastjson2/reader/ObjectReader2;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final hashCode0:J

.field protected final hashCode0LCase:J

.field protected final hashCode1:J

.field protected final hashCode1LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 38
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 65
    aget-object p2, p9, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 66
    aget-object p4, p9, p3

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 68
    iget-wide p5, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    .line 69
    iget-wide p5, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    .line 71
    iget-wide p5, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    .line 72
    iget-wide p5, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    .line 74
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    :cond_0
    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hasDefaultValue:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 50
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 331
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 341
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 344
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected initDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method public readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->serializable:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 91
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    if-lez p3, :cond_2

    .line 98
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p3, p4, :cond_2

    .line 100
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x2

    :goto_0
    if-ge p4, p3, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->serializable:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->typeNameHash:J

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->features:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 122
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 127
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hasDefaultValue:Z

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v1

    if-lez v1, :cond_3

    .line 133
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    const/16 v0, -0x5a

    .line 148
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v3

    or-long/2addr v3, p4

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_7

    .line 157
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create instance error"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 165
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hasDefaultValue:Z

    if-eqz v3, :cond_8

    .line 166
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInitStringFieldAsEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 169
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    const/16 v3, -0x5b

    .line 172
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v3

    if-nez v3, :cond_f

    .line 173
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_a

    goto :goto_2

    .line 178
    :cond_a
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 179
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 180
    :cond_b
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 181
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    :cond_c
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->features:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 184
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v3

    .line 185
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_d

    .line 186
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 188
    :cond_d
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 189
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 194
    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_10

    .line 199
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_11

    .line 203
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_11
    return-object v0

    .line 149
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect object, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            ")TT;"
        }
    .end annotation

    .line 211
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->features:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 216
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->serializable:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 220
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v6

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 232
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_5

    .line 233
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 234
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 235
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hasDefaultValue:Z

    if-eqz p3, :cond_3

    .line 236
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    .line 239
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 240
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 p4, 0x5d

    if-ne p3, p4, :cond_4

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    return-object p2

    .line 242
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "array to bean end error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 248
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 251
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 253
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hasDefaultValue:Z

    if-eqz v3, :cond_7

    .line 254
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 256
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_8

    .line 257
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_8
    const/4 v1, 0x0

    .line 261
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 265
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    if-nez v1, :cond_d

    .line 267
    sget-wide v4, Lcom/alibaba/fastjson2/reader/ObjectReader2;->HASH_TYPE:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    .line 268
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 269
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v4

    .line 270
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_a

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_a

    goto/16 :goto_3

    :cond_a
    move-object v3, v2

    if-eq v3, p0, :cond_12

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 281
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/16 p2, 0x2c

    .line 308
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 310
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    if-eqz p2, :cond_b

    .line 312
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 314
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    const-string p4, "build object error"

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 318
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_c

    .line 319
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_c
    return-object v0

    .line 288
    :cond_d
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 289
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_3

    .line 290
    :cond_e
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 291
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_3

    .line 293
    :cond_f
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 294
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    .line 295
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 296
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_3

    .line 298
    :cond_10
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 299
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_3

    .line 304
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :cond_12
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
