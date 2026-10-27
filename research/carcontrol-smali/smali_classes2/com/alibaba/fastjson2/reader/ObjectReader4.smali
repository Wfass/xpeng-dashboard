.class public Lcom/alibaba/fastjson2/reader/ObjectReader4;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader4.java"


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

.field protected final fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method constructor <init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
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
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v0, 0x3

    aput-object p10, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 49
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

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

    .line 86
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 87
    aget-object p2, p9, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 88
    aget-object p4, p9, p3

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x2

    .line 89
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x3

    .line 90
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 92
    iget-wide p7, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    .line 93
    iget-wide p7, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    .line 94
    iget-wide p7, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    .line 95
    iget-wide p7, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    .line 97
    iget-wide p7, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    .line 98
    iget-wide p7, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    .line 99
    iget-wide p7, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    .line 100
    iget-wide p7, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    .line 102
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    :cond_0
    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hasDefaultValue:Z

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

    .line 73
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 384
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 387
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 388
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 391
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 392
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 395
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 396
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 404
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 405
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 408
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 409
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 412
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 413
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 416
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 417
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_3
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

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

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

    .line 223
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->serializable:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 227
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 229
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    .line 233
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-lez p2, :cond_2

    .line 236
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p2, p4, :cond_2

    .line 238
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p2, p4, :cond_2

    .line 240
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p2, p4, :cond_2

    .line 242
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x4

    :goto_0
    if-ge p4, p2, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p3
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

    .line 118
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->serializable:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v1

    if-lez v1, :cond_1

    .line 127
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->typeNameHash:J

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->features:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 150
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 151
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 154
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v3

    or-long/2addr v3, p4

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    .line 163
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create instance error"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 171
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hasDefaultValue:Z

    if-eqz v3, :cond_7

    .line 172
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initDefaultValue(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 175
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v3

    if-nez v3, :cond_12

    .line 176
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 181
    :cond_8
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 182
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    :cond_9
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 184
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 185
    :cond_a
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 186
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 187
    :cond_b
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 188
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 190
    :cond_c
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->features:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-nez v3, :cond_d

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 195
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v3

    .line 196
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_e

    .line 197
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_e
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_f

    .line 199
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 200
    :cond_f
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 201
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 202
    :cond_10
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 203
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 205
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 210
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_13

    .line 211
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    :cond_13
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_14

    .line 215
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_14
    return-object v0

    .line 155
    :cond_15
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

    .line 261
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->serializable:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 265
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v6

    .line 275
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 276
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_6

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 278
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 279
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hasDefaultValue:Z

    if-eqz p3, :cond_3

    .line 280
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initDefaultValue(Ljava/lang/Object;)V

    .line 283
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 284
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 285
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 286
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 291
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 293
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 294
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2

    .line 288
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "array to bean end error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 299
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 302
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 303
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 304
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hasDefaultValue:Z

    if-eqz v3, :cond_8

    .line 305
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 307
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 308
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 316
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    if-nez v1, :cond_e

    .line 318
    sget-wide v4, Lcom/alibaba/fastjson2/reader/ObjectReader4;->HASH_TYPE:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 319
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 320
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v4

    .line 321
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    .line 323
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_18

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 332
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 368
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 370
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_c

    .line 371
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_d

    .line 375
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_d
    return-object v0

    .line 339
    :cond_e
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 340
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 341
    :cond_f
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 342
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 343
    :cond_10
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 344
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 345
    :cond_11
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 346
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 348
    :cond_12
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v2

    if-nez v2, :cond_13

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 353
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    .line 354
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    .line 355
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 356
    :cond_14
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 357
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 358
    :cond_15
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 359
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 360
    :cond_16
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 361
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 363
    :cond_17
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :cond_18
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
