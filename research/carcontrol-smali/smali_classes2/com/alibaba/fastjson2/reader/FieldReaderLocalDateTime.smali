.class public final Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;
.super Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;
.source "FieldReaderLocalDateTime.java"


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
            "Ljava/time/ZonedDateTime;",
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
            "Ljava/time/ZonedDateTime;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p7

    if-eqz v7, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;

    move-object/from16 v8, p8

    invoke-direct {v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p8

    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;

    :goto_0
    move-object v13, v0

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

    .line 38
    invoke-direct/range {v0 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)V

    move-object/from16 v1, p13

    .line 52
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->function:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 0

    .line 67
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    .line 68
    sget-object p3, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p2, p3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected accept(Ljava/lang/Object;Ljava/time/Instant;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p2, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->assertValidate(Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "set "

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    .line 138
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return-void

    .line 142
    :cond_1
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldOffset:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 143
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldOffset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 148
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 135
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldName:Ljava/lang/String;

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

.method protected accept(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 95
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method protected accept(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 1

    .line 75
    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 76
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p2, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 77
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method protected acceptNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    check-cast v0, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method protected apply(J)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 125
    sget-object p2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/time/Instant;)Ljava/lang/Object;
    .locals 1

    .line 108
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method protected apply(Ljava/time/ZonedDateTime;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method protected apply(Ljava/util/Date;)Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->features:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDateTime;

    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldClass:Ljava/lang/Class;

    const-class v0, Ljava/time/Instant;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderLocalDateTime;->fieldClass:Ljava/lang/Class;

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
