.class public Lorg/apache/commons/net/ftp/parser/f;
.super Ljava/lang/Object;
.source "FTPTimestampParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/a;
.implements Lorg/apache/commons/net/ftp/parser/e;


# static fields
.field private static final atb:[I


# instance fields
.field private ark:Z

.field private asX:Ljava/text/SimpleDateFormat;

.field private asY:I

.field private asZ:Ljava/text/SimpleDateFormat;

.field private ata:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/f;->atb:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0xd
        0xc
        0xb
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/f;->ark:Z

    .line 146
    const-string v0, "MMM d yyyy"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/f;->a(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 147
    const-string v0, "MMM d HH:mm"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/f;->b(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 148
    return-void
.end method

.method private static a(Ljava/text/SimpleDateFormat;)I
    .locals 7

    .line 83
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 84
    return v0

    .line 86
    :cond_0
    nop

    .line 87
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    .line 88
    const-string v1, "SsmHdM"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-char v4, v1, v3

    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 90
    const/16 v5, 0x48

    if-eq v4, v5, :cond_6

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_5

    const/16 v5, 0x53

    if-eq v4, v5, :cond_4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    const/16 v5, 0x6d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x73

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    const/16 p0, 0xd

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 96
    :cond_2
    const/16 p0, 0xc

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 100
    :cond_3
    const/4 p0, 0x5

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 92
    :cond_4
    const/16 p0, 0xe

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 102
    :cond_5
    const/4 p0, 0x2

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 98
    :cond_6
    const/16 p0, 0xb

    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/f;->indexOf(I)I

    move-result p0

    return p0

    .line 88
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_8
    return v0
.end method

.method private static a(ILjava/util/Calendar;)V
    .locals 1

    .line 128
    if-gtz p0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    sget-object v0, Lorg/apache/commons/net/ftp/parser/f;->atb:[I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    .line 134
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->clear(I)V

    .line 140
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1

    .line 269
    if-eqz p1, :cond_1

    .line 270
    if-eqz p2, :cond_0

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 273
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    .line 275
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    .line 277
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    .line 279
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/f;->a(Ljava/text/SimpleDateFormat;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asY:I

    .line 280
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1

    .line 298
    if-eqz p1, :cond_1

    .line 299
    if-eqz p2, :cond_0

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 302
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    .line 304
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    .line 306
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    .line 308
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/f;->a(Ljava/text/SimpleDateFormat;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/ftp/parser/f;->ata:I

    .line 309
    return-void
.end method

.method private ga(Ljava/lang/String;)V
    .locals 1

    .line 333
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 337
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 338
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    :cond_1
    return-void
.end method

.method private static indexOf(I)I
    .locals 3

    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/apache/commons/net/ftp/parser/f;->atb:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 115
    sget-object v2, Lorg/apache/commons/net/ftp/parser/f;->atb:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 116
    return v1

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 190
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/f;->vc()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 193
    nop

    .line 195
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 197
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/f;->vc()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    iget-boolean v3, p0, Lorg/apache/commons/net/ftp/parser/f;->ark:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 201
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 212
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance v5, Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " yyyy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 216
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 217
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/f;->asZ:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 218
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 219
    invoke-virtual {v5, v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 221
    if-eqz v5, :cond_2

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v6, v3, :cond_2

    .line 222
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    const/4 p1, -0x1

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 226
    :cond_1
    iget p1, p0, Lorg/apache/commons/net/ftp/parser/f;->ata:I

    invoke-static {p1, v0}, Lorg/apache/commons/net/ftp/parser/f;->a(ILjava/util/Calendar;)V

    .line 227
    return-object v0

    .line 231
    :cond_2
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 232
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    iget p1, p0, Lorg/apache/commons/net/ftp/parser/f;->asY:I

    invoke-static {p1, v0}, Lorg/apache/commons/net/ftp/parser/f;->a(ILjava/util/Calendar;)V

    .line 249
    return-object v0

    .line 243
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' could not be parsed using a server time of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    invoke-direct {v0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public a(Lorg/apache/commons/net/ftp/d;)V
    .locals 2

    .line 368
    nop

    .line 370
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uV()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uU()Ljava/lang/String;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    invoke-static {v1}, Lorg/apache/commons/net/ftp/d;->fT(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    .line 375
    invoke-static {v0}, Lorg/apache/commons/net/ftp/d;->fS(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, "en"

    invoke-static {v0}, Lorg/apache/commons/net/ftp/d;->fS(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 381
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uS()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/f;->b(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 384
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uR()Ljava/lang/String;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_2

    .line 388
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/f;->a(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 390
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uT()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/f;->ga(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uW()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/parser/f;->ark:Z

    .line 393
    return-void

    .line 386
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "defaultFormatString cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fY(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/f;->a(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public vc()Ljava/util/TimeZone;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/f;->asX:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method
