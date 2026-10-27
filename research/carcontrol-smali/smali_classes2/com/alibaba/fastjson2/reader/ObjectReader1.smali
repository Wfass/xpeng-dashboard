.class public Lcom/alibaba/fastjson2/reader/ObjectReader1;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "ObjectReader1.java"


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

.field final hashCode0:J

.field final hashCode0LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;)V
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
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v10, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 32
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

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

    .line 57
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 p1, 0x0

    .line 59
    aget-object p2, p9, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 60
    iget-wide p3, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    .line 61
    iget-wide p3, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    .line 63
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hasDefaultValue:Z

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

    .line 44
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p1

    :cond_0
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

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->serializable:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 77
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 79
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    if-lez p3, :cond_2

    .line 86
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p3, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
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

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->serializable:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 105
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 107
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    if-lez p3, :cond_2

    .line 114
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p4, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p3, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    :cond_4
    const/16 v0, -0x5a

    .line 126
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    goto :goto_1

    .line 130
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "expect object, but "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result p4

    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 135
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v5

    or-long/2addr v5, p4

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-eqz v0, :cond_8

    .line 139
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v5}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 141
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    const-string p4, "create instance error"

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_8
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 147
    iget-boolean v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hasDefaultValue:Z

    if-eqz v5, :cond_9

    .line 148
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->initDefaultValue(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    const/16 v5, -0x5b

    .line 152
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 194
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_a

    .line 195
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_b

    .line 199
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_b
    return-object v0

    .line 156
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v5

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->getTypeKeyHash()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_10

    if-nez v1, :cond_10

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v5

    .line 160
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v7

    .line 161
    invoke-virtual {p0, v7, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    if-nez v5, :cond_e

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v7, v5, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    if-eqz v6, :cond_d

    move-object v5, v6

    goto :goto_4

    .line 167
    :cond_d
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "auotype not support : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    :goto_4
    if-ne v5, p0, :cond_f

    goto :goto_5

    :cond_f
    move-object v0, v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 175
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    cmp-long v7, v5, v3

    if-nez v7, :cond_11

    goto :goto_5

    .line 182
    :cond_11
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_12

    .line 183
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v5, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_5

    .line 185
    :cond_12
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->features:J

    or-long/2addr v5, p4

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_13

    .line 187
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v5, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_5

    .line 189
    :cond_13
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
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

    .line 68
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->features:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->serializable:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 216
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 217
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 224
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v8

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    .line 226
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p4, v8

    cmp-long p4, p4, v2

    if-eqz p4, :cond_5

    .line 227
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 228
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 230
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 237
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    .line 232
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "array to bean end error, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 243
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 246
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->creator:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 251
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hasDefaultValue:Z

    if-eqz v0, :cond_8

    .line 252
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 254
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v8

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    .line 255
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 263
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    if-nez v0, :cond_e

    .line 264
    sget-wide v4, Lcom/alibaba/fastjson2/reader/ObjectReader1;->HASH_TYPE:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v2

    .line 266
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    .line 269
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->objectClass:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 278
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 297
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 299
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_c

    .line 300
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->buildFunction:Ljava/util/function/Function;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p1, :cond_d

    .line 304
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_d
    return-object v1

    .line 285
    :cond_e
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 286
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 288
    :cond_f
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 290
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 292
    :cond_10
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :cond_11
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/Object;Ljava/lang/String;JI)Z
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    cmp-long p2, v0, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 333
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p2, p1, p5}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    return p1
.end method
