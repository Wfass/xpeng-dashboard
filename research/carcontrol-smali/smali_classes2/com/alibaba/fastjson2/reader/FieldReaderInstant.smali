.class public final Lcom/alibaba/fastjson2/reader/FieldReaderInstant;
.super Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;
.source "FieldReaderInstant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/time/Instant;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static/range {p7 .. p8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;

    move-result-object v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p11

    .line 39
    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    move-object/from16 v1, p13

    .line 53
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->function:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 118
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected accept(Ljava/lang/Object;Ljava/time/Instant;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/Instant;",
            ")V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "set "

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    .line 131
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->function:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->method:Ljava/lang/reflect/Method;

    const-string v2, " error"

    if-eqz v1, :cond_3

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 149
    :cond_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldOffset:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 150
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldOffset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 155
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 157
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 128
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " error, object is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/LocalDateTime;",
            ")V"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 71
    invoke-virtual {p2, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected accept(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/ZonedDateTime;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected accept(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected acceptNull(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    check-cast v0, Ljava/time/Instant;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected apply(J)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/time/Instant;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method protected apply(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .locals 1

    .line 102
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/time/ZonedDateTime;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/util/Date;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->fieldName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->features:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Instant;

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInstant()Ljava/time/Instant;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderInstant;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public bridge synthetic supportAcceptType(Ljava/lang/Class;)Z
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->supportAcceptType(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
