.class public Lorg/apache/commons/net/ftp/parser/o;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "VMSFTPEntryParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/o;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 92
    const-string v0, "(.*?;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/o;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 94
    return-void
.end method


# virtual methods
.method public a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    :goto_0
    if-eqz v0, :cond_3

    .line 218
    const-string v2, "Directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Total"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    goto :goto_2

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 230
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 17

    move-object/from16 v1, p0

    .line 110
    nop

    .line 112
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/o;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 114
    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    new-array v10, v8, [Ljava/lang/String;

    .line 121
    const/16 v11, 0x9

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 122
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 123
    const/16 v11, 0xb

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/o;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 126
    :try_start_0
    invoke-super {v1, v0}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 136
    :goto_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v0, v9, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 147
    nop

    .line 148
    nop

    .line 151
    move-object v0, v2

    goto :goto_1

    .line 143
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    goto :goto_1

    .line 139
    :pswitch_1
    nop

    .line 140
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 141
    nop

    .line 151
    :goto_1
    const-string v9, ".DIR"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    .line 153
    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_2

    .line 157
    :cond_0
    invoke-virtual {v3, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 161
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/ftp/parser/o;->vd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v3, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_1
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v3, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 172
    :goto_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x200

    mul-long/2addr v13, v15

    .line 173
    invoke-virtual {v3, v13, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 175
    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 184
    move v0, v12

    :goto_4
    if-ge v0, v8, :cond_5

    .line 186
    aget-object v1, v10, v0

    .line 188
    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    move v2, v4

    goto :goto_5

    :cond_2
    move v2, v12

    :goto_5
    invoke-virtual {v3, v0, v12, v2}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 189
    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    move v2, v4

    goto :goto_6

    :cond_3
    move v2, v12

    :goto_6
    invoke-virtual {v3, v0, v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 190
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    move v1, v4

    goto :goto_7

    :cond_4
    move v1, v12

    :goto_7
    invoke-virtual {v3, v0, v6, v1}, Lorg/apache/commons/net/ftp/FTPFile;->b(IIZ)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 193
    :cond_5
    return-object v3

    .line 195
    :cond_6
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 245
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected vd()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method
