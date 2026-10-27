.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "ObjectWriterImplOffsetTime.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 27
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 29
    check-cast p2, Ljava/time/OffsetTime;

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    if-nez p4, :cond_1

    .line 33
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    .line 37
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeOffsetTime(Ljava/time/OffsetTime;)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p4, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
