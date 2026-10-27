.class public Lcom/alibaba/fastjson2/reader/ObjectReader5;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader5.java"


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

.field protected final fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field final hashCode4:J

.field final hashCode4LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
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

    .line 91
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 93
    aget-object p2, p9, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 94
    aget-object p4, p9, p3

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x2

    .line 95
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p6, 0x3

    .line 96
    aget-object p6, p9, p6

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p7, 0x4

    .line 97
    aget-object p7, p9, p7

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 99
    iget-wide p8, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    .line 100
    iget-wide p8, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    .line 101
    iget-wide p8, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    .line 102
    iget-wide p8, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    .line 103
    iget-wide p8, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    .line 105
    iget-wide p8, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    .line 106
    iget-wide p8, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    .line 107
    iget-wide p8, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    .line 108
    iget-wide p8, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    .line 109
    iget-wide p8, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    .line 111
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p6, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p7, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    :cond_0
    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hasDefaultValue:Z

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

    .line 78
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Supplier<",
            "TT;>;J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/Function;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v0, 0x3

    aput-object p10, v10, v0

    const/4 v0, 0x4

    aput-object p11, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object v8, p2

    move-object/from16 v9, p6

    .line 53
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 412
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 415
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 416
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 419
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 420
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 423
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 424
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 427
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 428
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 436
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 437
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 440
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 441
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 444
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 445
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 448
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 449
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 452
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 453
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_4
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

    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

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

    .line 129
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->serializable:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 135
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    if-lez p3, :cond_2

    .line 142
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p3, p4, :cond_2

    .line 144
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p3, p4, :cond_2

    .line 146
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p3, p4, :cond_2

    .line 148
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x4

    if-le p3, p4, :cond_2

    .line 150
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x5

    :goto_0
    if-ge p4, p3, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

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

    .line 169
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->serializable:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x5

    :goto_0
    if-ge v2, v1, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->typeNameHash:J

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->features:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 203
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 204
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 207
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 214
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

    .line 216
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 218
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

    .line 224
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hasDefaultValue:Z

    if-eqz v3, :cond_7

    .line 225
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 228
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v3

    if-nez v3, :cond_14

    .line 229
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 234
    :cond_8
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 235
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    :cond_9
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 237
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 238
    :cond_a
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 239
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 240
    :cond_b
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_c

    .line 241
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 242
    :cond_c
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 243
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 245
    :cond_d
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->features:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 250
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v3

    .line 251
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_f

    .line 252
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_f
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 254
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_10
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_11

    .line 256
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 257
    :cond_11
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_12

    .line 258
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 259
    :cond_12
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 260
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 262
    :cond_13
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 267
    :cond_14
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_15

    .line 268
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    :cond_15
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_16

    .line 272
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_16
    return-object v0

    .line 208
    :cond_17
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

    .line 280
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->serializable:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 284
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v6

    .line 294
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 295
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_6

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 297
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 298
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hasDefaultValue:Z

    if-eqz p3, :cond_3

    .line 299
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    .line 302
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 303
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 304
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 305
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 306
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 311
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 313
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2

    .line 308
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

    .line 319
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 322
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 323
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hasDefaultValue:Z

    if-eqz v3, :cond_8

    .line 325
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 327
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 328
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    .line 332
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 336
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    if-nez v1, :cond_c

    .line 338
    sget-wide v4, Lcom/alibaba/fastjson2/reader/ObjectReader5;->HASH_TYPE:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    .line 339
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v4

    .line 341
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    .line 343
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_1b

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 352
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 396
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 398
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_d

    .line 399
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    :cond_d
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_e

    .line 403
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_e
    return-object v0

    .line 363
    :cond_f
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 364
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 365
    :cond_10
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 366
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 367
    :cond_11
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    .line 368
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 369
    :cond_12
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_13

    .line 370
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 371
    :cond_13
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    .line 372
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 374
    :cond_14
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v2

    if-nez v2, :cond_15

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 379
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    .line 380
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 381
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 382
    :cond_16
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_17

    .line 383
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 384
    :cond_17
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_18

    .line 385
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 386
    :cond_18
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_19

    .line 387
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 388
    :cond_19
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 389
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 391
    :cond_1a
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :cond_1b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
