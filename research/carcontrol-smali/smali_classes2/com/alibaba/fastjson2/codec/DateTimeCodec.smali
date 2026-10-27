.class public abstract Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.super Ljava/lang/Object;
.source "DateTimeCodec.java"


# instance fields
.field dateFormatter:Ljava/time/format/DateTimeFormatter;

.field public final format:Ljava/lang/String;

.field protected final formatHasDay:Z

.field protected final formatHasHour:Z

.field public final formatISO8601:Z

.field public final formatMillis:Z

.field public final formatUnixTime:Z

.field public final locale:Ljava/util/Locale;

.field public final useSimpleFormatter:Z

.field protected final yyyyMMdd10:Z

.field protected final yyyyMMdd8:Z

.field protected final yyyyMMddhhmm16:Z

.field protected final yyyyMMddhhmmss14:Z

.field protected final yyyyMMddhhmmss19:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "aa"

    const-string v1, "a"

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->locale:Ljava/util/Locale;

    const-string/jumbo p2, "yyyyMMddHHmmss"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss14:Z

    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmmss19:Z

    const-string/jumbo p2, "yyyy-MM-dd HH:mm"

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMddhhmm16:Z

    const-string/jumbo p2, "yyyy-MM-dd"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMdd10:Z

    const-string/jumbo p2, "yyyyMMdd"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->yyyyMMdd8:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string v1, "iso8601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "unixtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    goto :goto_1

    :sswitch_2
    const-string v1, "millis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x64

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_4

    move v1, p2

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    const/16 v3, 0x48

    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_6

    const/16 v3, 0x68

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_6

    const/16 v3, 0x4b

    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_6

    const/16 v3, 0x6b

    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    goto :goto_3

    :cond_5
    move p2, v0

    :cond_6
    :goto_3
    move v3, p2

    move p2, v0

    move v2, v1

    move v1, p2

    goto :goto_6

    :pswitch_0
    move v1, p2

    move p2, v0

    move v2, p2

    goto :goto_5

    :pswitch_1
    move v1, v0

    goto :goto_4

    :pswitch_2
    move v1, v0

    move v2, v1

    move v3, v2

    move v0, p2

    move p2, v3

    goto :goto_6

    :cond_7
    move p2, v0

    move v1, p2

    :goto_4
    move v2, v1

    :goto_5
    move v3, v2

    .line 64
    :goto_6
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    .line 68
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasDay:Z

    .line 69
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatHasHour:Z

    const-string/jumbo p2, "yyyyMMddHHmmssSSSZ"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->useSimpleFormatter:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_2
        -0x112ad7ab -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDateFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 76
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public getDateFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->locale:Ljava/util/Locale;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object p1

    :cond_3
    if-nez p1, :cond_5

    .line 98
    iget-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->locale:Ljava/util/Locale;

    if-nez p1, :cond_4

    .line 99
    iget-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object p1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object p1

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
