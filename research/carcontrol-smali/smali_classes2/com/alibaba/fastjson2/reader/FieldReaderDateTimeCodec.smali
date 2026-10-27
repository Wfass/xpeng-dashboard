.class abstract Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "FieldReaderDateTimeCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final formatMillis:Z

.field final formatUnixTime:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 1

    .line 36
    invoke-direct/range {p0 .. p12}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 37
    iput-object p13, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p7, :cond_1

    .line 41
    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    const-string p3, "millis"

    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string/jumbo p3, "unixtime"

    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_0
    move v0, p2

    move p2, p1

    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 52
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    .line 53
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatMillis:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->acceptNull(Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 98
    check-cast p2, Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->format:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatMillis:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    if-eqz p2, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 109
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;J)V

    return-void

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->format:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p2, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    .line 100
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->acceptNull(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_6
    :goto_1
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 117
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/util/Date;)V

    goto :goto_2

    .line 118
    :cond_7
    instance-of v0, p2, Ljava/time/Instant;

    if-eqz v0, :cond_8

    .line 119
    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/time/Instant;)V

    goto :goto_2

    .line 120
    :cond_8
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 121
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;J)V

    goto :goto_2

    .line 122
    :cond_9
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_a

    .line 123
    check-cast p2, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V

    goto :goto_2

    .line 124
    :cond_a
    instance-of v0, p2, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_b

    .line 125
    check-cast p2, Ljava/time/ZonedDateTime;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    :goto_2
    return-void

    .line 127
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract accept(Ljava/lang/Object;Ljava/time/Instant;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/Instant;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract accept(Ljava/lang/Object;Ljava/time/LocalDateTime;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/LocalDateTime;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract accept(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/ZonedDateTime;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract accept(Ljava/lang/Object;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract acceptNull(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract apply(J)Ljava/lang/Object;
.end method

.method protected abstract apply(Ljava/time/Instant;)Ljava/lang/Object;
.end method

.method protected abstract apply(Ljava/time/LocalDateTime;)Ljava/lang/Object;
.end method

.method protected abstract apply(Ljava/time/ZonedDateTime;)Ljava/lang/Object;
.end method

.method protected abstract apply(Ljava/util/Date;)Ljava/lang/Object;
.end method

.method public final getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public final getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public final readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->fieldName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->features:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 1

    .line 132
    const-class v0, Ljava/util/Date;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/String;

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
