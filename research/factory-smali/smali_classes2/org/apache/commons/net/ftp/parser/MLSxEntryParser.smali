.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "MLSxEntryParser.java"


# static fields
.field private static final PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static UNIX_GROUPS:[I

.field private static UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "file"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "cdir"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "pdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "dir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    .line 76
    const/16 v1, 0x8

    new-array v1, v1, [[I

    new-array v4, v2, [I

    aput-object v4, v1, v2

    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v5, v4, v2

    aput-object v4, v1, v3

    new-array v4, v3, [I

    aput v3, v4, v2

    aput-object v4, v1, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_1

    aput-object v4, v1, v0

    new-array v3, v3, [I

    aput v2, v3, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 94
    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "valueLowerCase"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i$":I
    :goto_0
    if-ge v3, v1, :cond_4

    aget-char v4, v0, v3

    .line 224
    .local v4, "c":C
    const/16 v5, 0x61

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const/16 v5, 0x70

    if-eq v4, v5, :cond_2

    const/16 v5, 0x72

    if-eq v4, v5, :cond_1

    const/16 v5, 0x77

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .end local v4    # "c":C
    goto :goto_1

    .line 244
    .restart local v4    # "c":C
    :pswitch_0
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 245
    goto :goto_1

    .line 241
    :pswitch_1
    const/4 v5, 0x2

    invoke-virtual {p1, v2, v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 242
    goto :goto_1

    .line 239
    :pswitch_2
    goto :goto_1

    .line 235
    :pswitch_3
    invoke-virtual {p1, v2, v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 236
    goto :goto_1

    .line 232
    :pswitch_4
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 233
    goto :goto_1

    .line 229
    :pswitch_5
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 230
    goto :goto_1

    .line 253
    :cond_0
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 254
    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p1, v2, v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 251
    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 248
    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {p1, v2, v6, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 227
    nop

    .line 222
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .locals 1

    .line 267
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .param p0, "entry"    # Ljava/lang/String;

    .line 263
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p0, "timestamp"    # Ljava/lang/String;

    .line 194
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x1

    .local v2, "hasMillis":Z
    goto :goto_0

    .line 198
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "hasMillis":Z
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    move v2, v1

    .line 201
    .restart local v2    # "hasMillis":Z
    :goto_0
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 203
    .local v3, "GMT":Ljava/util/TimeZone;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 205
    .local v4, "gc":Ljava/util/GregorianCalendar;
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 206
    .local v5, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 207
    invoke-virtual {v0, p0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 208
    .local v1, "parsed":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 209
    const/4 v6, 0x0

    return-object v6

    .line 211
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 212
    if-nez v2, :cond_2

    .line 213
    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 215
    :cond_2
    return-object v4
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 26
    .param p1, "entry"    # Ljava/lang/String;

    .line 98
    move-object/from16 v0, p1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 100
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 101
    .local v1, "file":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 103
    return-object v1

    .line 105
    .end local v1    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_0
    return-object v2

    .line 109
    :cond_1
    const-string v1, " "

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "parts":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v4, :cond_16

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    goto/16 :goto_a

    .line 113
    :cond_2
    const/4 v5, 0x0

    aget-object v6, v1, v5

    .line 114
    .local v6, "factList":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 115
    return-object v2

    .line 117
    :cond_3
    new-instance v7, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v7}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 118
    .local v7, "file":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 119
    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 120
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "facts":[Ljava/lang/String;
    aget-object v9, v1, v5

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "unix.mode="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 122
    .local v9, "hasUnixMode":Z
    move-object v10, v8

    .local v10, "arr$":[Ljava/lang/String;
    array-length v11, v10

    .local v11, "len$":I
    move v12, v5

    .local v12, "i$":I
    :goto_0
    if-ge v12, v11, :cond_15

    aget-object v13, v10, v12

    .line 123
    .local v13, "fact":Ljava/lang/String;
    const-string v14, "="

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, "factparts":[Ljava/lang/String;
    array-length v15, v14

    if-eq v15, v4, :cond_4

    .line 128
    return-object v2

    .line 130
    :cond_4
    aget-object v15, v14, v5

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "factname":Ljava/lang/String;
    aget-object v15, v14, v3

    .line 132
    .local v15, "factvalue":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_5

    .line 133
    nop

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v25, v6

    move v6, v3

    goto/16 :goto_9

    .line 135
    :cond_5
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "valueLowerCase":Ljava/lang/String;
    const-string v3, "size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 122
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v4    # "factname":Ljava/lang/String;
    .end local v5    # "valueLowerCase":Ljava/lang/String;
    .end local v6    # "factList":Ljava/lang/String;
    .end local v13    # "fact":Ljava/lang/String;
    .end local v14    # "factparts":[Ljava/lang/String;
    .end local v15    # "factvalue":Ljava/lang/String;
    .local v18, "parts":[Ljava/lang/String;
    .local v25, "factList":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v25, v6

    const/4 v6, 0x1

    goto/16 :goto_9

    .line 139
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v4    # "factname":Ljava/lang/String;
    .restart local v5    # "valueLowerCase":Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    .restart local v13    # "fact":Ljava/lang/String;
    .restart local v14    # "factparts":[Ljava/lang/String;
    .restart local v15    # "factvalue":Ljava/lang/String;
    :cond_6
    const-string v2, "sizd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 140
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 142
    :cond_7
    const-string v2, "modify"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 143
    invoke-static {v15}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 144
    .local v2, "parsed":Ljava/util/Calendar;
    if-nez v2, :cond_8

    .line 145
    const/4 v3, 0x0

    return-object v3

    .line 147
    :cond_8
    invoke-virtual {v7, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 148
    .end local v2    # "parsed":Ljava/util/Calendar;
    goto :goto_1

    .line 149
    :cond_9
    const-string v2, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_b

    .line 150
    sget-object v2, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 151
    .local v2, "intType":Ljava/lang/Integer;
    if-nez v2, :cond_a

    .line 152
    invoke-virtual {v7, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_2

    .line 154
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 156
    .end local v2    # "intType":Ljava/lang/Integer;
    :goto_2
    goto :goto_1

    .line 157
    :cond_b
    const-string v2, "unix."

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 158
    const-string v2, "unix."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "unixfact":Ljava/lang/String;
    const-string v3, "group"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 160
    invoke-virtual {v7, v15}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 176
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "unixfact":Ljava/lang/String;
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v18    # "parts":[Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    :goto_3
    move-object/from16 v18, v1

    move-object/from16 v25, v6

    const/4 v6, 0x1

    goto/16 :goto_7

    .line 161
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v2    # "unixfact":Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_c
    const-string v3, "owner"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 162
    invoke-virtual {v7, v15}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    goto :goto_3

    .line 163
    :cond_d
    const-string v3, "mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 164
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x3

    sub-int/2addr v3, v0

    .line 165
    .local v3, "off":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move-object/from16 v18, v1

    move/from16 v1, v17

    if-ge v1, v0, :cond_11

    .line 166
    .end local v17    # "i":I
    .local v1, "i":I
    .restart local v18    # "parts":[Ljava/lang/String;
    add-int v0, v3, v1

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 167
    .local v0, "ch":I
    if-ltz v0, :cond_10

    move-object/from16 v19, v2

    const/4 v2, 0x7

    .end local v2    # "unixfact":Ljava/lang/String;
    .local v19, "unixfact":Ljava/lang/String;
    if-gt v0, v2, :cond_f

    .line 168
    sget-object v2, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    aget-object v2, v2, v0

    .local v2, "arr$":[I
    move/from16 v20, v0

    array-length v0, v2

    .local v0, "len$":I
    .local v20, "ch":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_5
    move/from16 v21, v16

    .end local v16    # "i$":I
    .local v21, "i$":I
    move/from16 v22, v3

    move/from16 v3, v21

    if-ge v3, v0, :cond_e

    .end local v21    # "i$":I
    .local v3, "i$":I
    .local v22, "off":I
    move/from16 v23, v0

    aget v0, v2, v3

    .line 169
    .local v0, "p":I
    .local v23, "len$":I
    sget-object v16, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    move-object/from16 v24, v2

    aget v2, v16, v1

    .end local v2    # "arr$":[I
    .local v24, "arr$":[I
    move-object/from16 v25, v6

    const/4 v6, 0x1

    invoke-virtual {v7, v2, v0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 168
    .end local v0    # "p":I
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "i$":I
    .restart local v16    # "i$":I
    move/from16 v3, v22

    move/from16 v0, v23

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    goto :goto_5

    .line 165
    .end local v16    # "i$":I
    .end local v20    # "ch":I
    .end local v23    # "len$":I
    .end local v24    # "arr$":[I
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_e
    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "factList":Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "off":I
    .end local v25    # "factList":Ljava/lang/String;
    .local v3, "off":I
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_f
    move/from16 v22, v3

    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v3    # "off":I
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v22    # "off":I
    .restart local v25    # "factList":Ljava/lang/String;
    goto :goto_6

    .end local v19    # "unixfact":Ljava/lang/String;
    .end local v22    # "off":I
    .end local v25    # "factList":Ljava/lang/String;
    .local v2, "unixfact":Ljava/lang/String;
    .restart local v3    # "off":I
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_10
    move-object/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v2    # "unixfact":Ljava/lang/String;
    .end local v3    # "off":I
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v19    # "unixfact":Ljava/lang/String;
    .restart local v22    # "off":I
    .restart local v25    # "factList":Ljava/lang/String;
    :goto_6
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "i":I
    .local v16, "i":I
    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v22

    move-object/from16 v6, v25

    const/4 v0, 0x3

    goto :goto_4

    .line 176
    .end local v16    # "i":I
    .end local v19    # "unixfact":Ljava/lang/String;
    .end local v22    # "off":I
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_11
    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v6    # "factList":Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    goto :goto_7

    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .local v1, "parts":[Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v1

    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v1    # "parts":[Ljava/lang/String;
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v18    # "parts":[Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    :goto_7
    goto :goto_8

    .line 177
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_13
    move-object/from16 v18, v1

    move-object/from16 v25, v6

    const/4 v6, 0x1

    .end local v1    # "parts":[Ljava/lang/String;
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v18    # "parts":[Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    if-nez v9, :cond_14

    const-string v0, "perm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    .end local v4    # "factname":Ljava/lang/String;
    .end local v5    # "valueLowerCase":Ljava/lang/String;
    .end local v13    # "fact":Ljava/lang/String;
    .end local v14    # "factparts":[Ljava/lang/String;
    .end local v15    # "factvalue":Ljava/lang/String;
    goto :goto_9

    .line 122
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move v3, v6

    move-object/from16 v1, v18

    move-object/from16 v6, v25

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 181
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v6    # "factList":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v25, v6

    .end local v1    # "parts":[Ljava/lang/String;
    .end local v6    # "factList":Ljava/lang/String;
    .restart local v18    # "parts":[Ljava/lang/String;
    .restart local v25    # "factList":Ljava/lang/String;
    return-object v7

    .line 111
    .end local v7    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v8    # "facts":[Ljava/lang/String;
    .end local v9    # "hasUnixMode":Z
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v25    # "factList":Ljava/lang/String;
    .restart local v1    # "parts":[Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    .end local v1    # "parts":[Ljava/lang/String;
    .restart local v18    # "parts":[Ljava/lang/String;
    :goto_a
    const/4 v1, 0x0

    return-object v1
.end method
