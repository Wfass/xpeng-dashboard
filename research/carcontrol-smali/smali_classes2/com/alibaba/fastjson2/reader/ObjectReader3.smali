.class public Lcom/alibaba/fastjson2/reader/ObjectReader3;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader3.java"


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

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;


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

    .line 79
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 80
    aget-object p2, p9, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 81
    aget-object p4, p9, p3

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p5, 0x2

    .line 82
    aget-object p5, p9, p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 84
    iget-wide p6, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 85
    iget-wide p6, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 86
    iget-wide p6, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 88
    iget-wide p6, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    .line 89
    iget-wide p6, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    .line 90
    iget-wide p6, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    .line 92
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p5, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    :cond_0
    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hasDefaultValue:Z

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

    .line 66
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
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
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object v8, p2

    move-object/from16 v9, p6

    .line 43
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 353
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 356
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 357
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 360
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    .line 361
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 373
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 374
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    .line 377
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_2
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

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

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

    .line 106
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->serializable:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 110
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 112
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    .line 118
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length p4, p4

    if-ne p3, p4, :cond_2

    .line 119
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 120
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 121
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->readArrayMappingJSONBObject0(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;I)V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

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

    .line 135
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->serializable:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v1

    if-lez v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 v2, 0x3

    :goto_0
    if-ge v2, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->typeNameHash:J

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->features:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 164
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 165
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 168
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 175
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

    .line 177
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
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

    .line 185
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hasDefaultValue:Z

    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 189
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v3

    if-nez v3, :cond_10

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 195
    :cond_8
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 196
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 197
    :cond_9
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 198
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 199
    :cond_a
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 200
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 202
    :cond_b
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->features:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 206
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v3

    .line 207
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_d

    .line 208
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 209
    :cond_d
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_e

    .line 210
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_e
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 212
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v3, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 219
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_11

    .line 220
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_12

    .line 224
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_12
    return-object v0

    .line 169
    :cond_13
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->serializable:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 236
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v4

    .line 246
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 247
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, v4

    cmp-long v0, v6, v1

    if-eqz v0, :cond_6

    .line 248
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 250
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hasDefaultValue:Z

    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 263
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    return-object v0

    .line 258
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "array to bean end error"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 269
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 272
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 273
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 274
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hasDefaultValue:Z

    if-eqz v3, :cond_8

    .line 275
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 277
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long v3, v4, v6

    cmp-long v3, v3, v1

    if-eqz v3, :cond_9

    .line 278
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    const/4 v3, 0x0

    .line 282
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_1

    .line 286
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    if-nez v3, :cond_f

    .line 291
    sget-wide v6, Lcom/alibaba/fastjson2/reader/ObjectReader3;->HASH_TYPE:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_f

    .line 292
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v4

    .line 293
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v6

    .line 294
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-nez v4, :cond_c

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->objectClass:Ljava/lang/Class;

    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-nez v4, :cond_c

    goto/16 :goto_2

    :cond_c
    if-eq v4, p0, :cond_17

    move-object v0, v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 305
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 337
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 339
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    if-eqz v1, :cond_d

    .line 340
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->buildFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v1, :cond_e

    .line 344
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_e
    return-object v0

    .line 312
    :cond_f
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_10

    .line 313
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 314
    :cond_10
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_11

    .line 315
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 316
    :cond_11
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 317
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 319
    :cond_12
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->features:J

    or-long/2addr v4, p4

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v4

    if-nez v4, :cond_13

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 324
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v4

    .line 325
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_14

    .line 326
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 327
    :cond_14
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_15

    .line 328
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 329
    :cond_15
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    .line 330
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 332
    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :cond_17
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
