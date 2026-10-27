.class public Lorg/apache/commons/net/ftp/parser/h;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "MacOsPeterFTPEntryParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/h;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 114
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/h;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 116
    return-void
.end method


# virtual methods
.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 17

    move-object/from16 v1, p0

    .line 130
    new-instance v2, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 133
    nop

    .line 135
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/h;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 137
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    const-string v6, "0"

    .line 139
    nop

    .line 140
    nop

    .line 141
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x15

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x16

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    const/16 v8, 0x17

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 144
    const/16 v9, 0x18

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 148
    :try_start_0
    invoke-super {v1, v0}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 159
    :goto_0
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 180
    nop

    .line 183
    move v0, v10

    move v5, v11

    goto :goto_2

    .line 165
    :pswitch_0
    nop

    .line 166
    nop

    .line 183
    :goto_1
    move v0, v10

    move v5, v12

    goto :goto_2

    .line 162
    :pswitch_1
    nop

    .line 163
    nop

    .line 183
    move v5, v4

    move v0, v10

    goto :goto_2

    .line 172
    :pswitch_2
    nop

    .line 173
    nop

    .line 174
    nop

    .line 183
    move v0, v4

    move v5, v10

    goto :goto_2

    .line 168
    :cond_0
    nop

    .line 169
    goto :goto_1

    .line 177
    :cond_1
    :pswitch_3
    nop

    .line 178
    nop

    .line 183
    move v0, v10

    move v5, v0

    :goto_2
    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 185
    nop

    .line 186
    move v14, v10

    const/4 v15, 0x4

    :goto_3
    if-ge v14, v11, :cond_3

    .line 189
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v4

    invoke-virtual {v2, v14, v10, v11}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 191
    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v4

    invoke-virtual {v2, v14, v4, v11}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 194
    add-int/lit8 v11, v15, 0x2

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/h;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 195
    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v11

    if-nez v11, :cond_2

    .line 197
    invoke-virtual {v2, v14, v12, v4}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    goto :goto_4

    .line 201
    :cond_2
    invoke-virtual {v2, v14, v12, v10}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 186
    :goto_4
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x4

    const/4 v11, 0x3

    goto :goto_3

    .line 205
    :cond_3
    if-nez v0, :cond_4

    .line 209
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fz(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    goto :goto_5

    .line 211
    :catch_1
    move-exception v0

    .line 217
    :cond_4
    :goto_5
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 222
    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    goto :goto_6

    .line 224
    :catch_2
    move-exception v0

    .line 229
    :goto_6
    if-nez v9, :cond_5

    .line 231
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-ne v5, v12, :cond_7

    .line 241
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 243
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 245
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 249
    :cond_6
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x4

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fW(Ljava/lang/String;)V

    .line 253
    :goto_7
    goto :goto_8

    .line 256
    :cond_7
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 259
    :goto_8
    return-object v2

    .line 261
    :cond_8
    return-object v3

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

    .line 272
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
