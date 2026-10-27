.class public Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected calendar:Ljava/util/Calendar;

.field private orderedField:Z

.field private final reader:Lcom/alibaba/fastjson2/JSONReader;

.field protected str:Ljava/lang/String;

.field private strVal:Ljava/lang/String;

.field protected token:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->str:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 33
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->createReadContext(I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner$1;->$SwitchMap$com$alibaba$fastjson$parser$Feature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    iput-boolean p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->orderedField:Z

    goto :goto_0

    .line 116
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_2

    .line 113
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 110
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 107
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 104
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 101
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 98
    :pswitch_7
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 94
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_2

    .line 91
    :pswitch_9
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    .line 88
    :pswitch_a
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    move v0, v1

    :goto_2
    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    xor-int/lit8 p2, p2, 0x1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCurrent()C
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    return v0
.end method

.method public getReader()Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getInt32Value()I

    move-result v0

    return v0
.end method

.method public isBlankInput()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2

    .line 141
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner$1;->$SwitchMap$com$alibaba$fastjson$parser$Feature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 166
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 163
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 160
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 157
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 154
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 151
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 149
    :pswitch_7
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 146
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    goto :goto_0

    .line 143
    :pswitch_9
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    :goto_0
    if-nez p1, :cond_0

    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isOrderedField()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->orderedField:Z

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getInt64Value()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nextToken()V
    .locals 2

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->strVal:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "not support operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/16 v0, 0x11

    .line 218
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 213
    :sswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/16 v0, 0xd

    .line 214
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 209
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/16 v0, 0xc

    .line 210
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 250
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    const/16 v0, 0x8

    .line 251
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 246
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    .line 247
    :goto_0
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 205
    :sswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/16 v0, 0xf

    .line 206
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 201
    :sswitch_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/16 v0, 0xe

    .line 202
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 237
    :pswitch_1
    :sswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    .line 238
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_3

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 241
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    .line 239
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_2
    return-void

    .line 222
    :sswitch_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->reader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->strVal:Ljava/lang/String;

    const/4 v0, 0x4

    .line 223
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :sswitch_8
    const/16 v0, 0x14

    .line 254
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2b -> :sswitch_6
        0x2d -> :sswitch_6
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return-void
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->str:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stringVal()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->strVal:Ljava/lang/String;

    return-object v0
.end method

.method public token()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v0
.end method
