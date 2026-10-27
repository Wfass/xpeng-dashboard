.class public Lorg/apache/commons/net/ftp/parser/n;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "UnixFTPEntryParser.java"


# static fields
.field public static final atg:Lorg/apache/commons/net/ftp/d;


# instance fields
.field final ath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/n;->atg:Lorg/apache/commons/net/ftp/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/n;-><init>(Lorg/apache/commons/net/ftp/d;Z)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;Z)V
    .locals 1

    .line 198
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/n;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 200
    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/parser/n;->ath:Z

    .line 201
    return-void
.end method


# virtual methods
.method public G(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    const-string v2, "^total \\d+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 214
    :cond_0
    goto :goto_0

    .line 215
    :cond_1
    return-object p1
.end method

.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 17

    move-object/from16 v1, p0

    .line 230
    new-instance v2, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 233
    nop

    .line 235
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/n;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 241
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x13

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x14

    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    const/16 v10, 0x15

    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 244
    iget-boolean v11, v1, Lorg/apache/commons/net/ftp/parser/n;->ath:Z

    if-eqz v11, :cond_0

    .line 245
    const-string v11, "^\\s+"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u6708"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 251
    new-instance v9, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {v9}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    .line 252
    new-instance v11, Lorg/apache/commons/net/ftp/d;

    const-string v12, "UNIX"

    const-string v13, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    const-string v14, "M\'\u6708\' d\'\u65e5\' HH:mm"

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lorg/apache/commons/net/ftp/parser/f;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 254
    invoke-virtual {v9, v0}, Lorg/apache/commons/net/ftp/parser/f;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V

    .line 255
    goto :goto_0

    .line 256
    :cond_1
    invoke-super {v1, v0}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 268
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x6c

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 289
    nop

    .line 292
    move v0, v9

    move v4, v11

    goto :goto_3

    .line 274
    :pswitch_0
    nop

    .line 275
    nop

    .line 292
    :goto_2
    move v0, v9

    move v4, v12

    goto :goto_3

    .line 271
    :pswitch_1
    nop

    .line 272
    nop

    .line 292
    move v4, v3

    move v0, v9

    goto :goto_3

    .line 281
    :pswitch_2
    nop

    .line 282
    nop

    .line 283
    nop

    .line 292
    move v0, v3

    move v4, v9

    goto :goto_3

    .line 277
    :cond_2
    nop

    .line 278
    goto :goto_2

    .line 286
    :cond_3
    :pswitch_3
    nop

    .line 287
    nop

    .line 292
    move v0, v9

    move v4, v0

    :goto_3
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 294
    nop

    .line 295
    move v14, v9

    const/4 v15, 0x4

    :goto_4
    if-ge v14, v11, :cond_5

    .line 298
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    invoke-virtual {v2, v14, v9, v11}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 300
    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    invoke-virtual {v2, v14, v3, v11}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 303
    add-int/lit8 v11, v15, 0x2

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/n;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 304
    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v11

    if-nez v11, :cond_4

    .line 306
    invoke-virtual {v2, v14, v12, v3}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    goto :goto_5

    .line 310
    :cond_4
    invoke-virtual {v2, v14, v12, v9}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 295
    :goto_5
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x4

    const/4 v11, 0x3

    goto :goto_4

    .line 314
    :cond_5
    if-nez v0, :cond_6

    .line 318
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fz(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    goto :goto_6

    .line 320
    :catch_1
    move-exception v0

    .line 326
    :cond_6
    :goto_6
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 331
    :try_start_2
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    goto :goto_7

    .line 333
    :catch_2
    move-exception v0

    .line 340
    :goto_7
    if-ne v4, v12, :cond_8

    .line 343
    const-string v0, " -> "

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 345
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 347
    invoke-virtual {v2, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 351
    :cond_7
    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fW(Ljava/lang/String;)V

    .line 355
    :goto_8
    goto :goto_9

    .line 358
    :cond_8
    invoke-virtual {v2, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 360
    :goto_9
    return-object v2

    .line 362
    :cond_9
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 373
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
