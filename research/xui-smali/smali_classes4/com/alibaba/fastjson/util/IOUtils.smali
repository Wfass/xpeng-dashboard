.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    .line 44
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 46
    const/16 v1, 0x100

    new-array v0, v1, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 47
    new-array v0, v1, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 49
    const/4 v2, 0x0

    move v0, v2

    .local v0, "c":C
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_4

    .line 50
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 51
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 52
    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 53
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 54
    :cond_1
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_2

    const/16 v3, 0x24

    if-ne v0, v3, :cond_3

    .line 55
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 49
    :cond_3
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_0

    .line 59
    .end local v0    # "c":C
    :cond_4
    move v0, v2

    .restart local v0    # "c":C
    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 60
    const/16 v3, 0x41

    if-lt v0, v3, :cond_5

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    .line 61
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 62
    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_6

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_6

    .line 63
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 64
    :cond_6
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_7

    .line 65
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 66
    :cond_7
    const/16 v3, 0x30

    if-lt v0, v3, :cond_8

    const/16 v3, 0x39

    if-gt v0, v3, :cond_8

    .line 67
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 59
    :cond_8
    :goto_3
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_2

    .line 72
    .end local v0    # "c":C
    :cond_9
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_4

    .line 73
    :catch_0
    move-exception v0

    .line 110
    :goto_4
    const/16 v0, 0xa1

    new-array v3, v0, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 111
    new-array v3, v0, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 112
    new-array v3, v0, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    .line 113
    new-array v3, v0, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    .line 115
    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 117
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v5, 0x4

    aput-byte v5, v3, v2

    .line 118
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v3, v4

    .line 119
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    .line 120
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    .line 121
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v3, v5

    .line 122
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v8, 0x5

    aput-byte v5, v3, v8

    .line 123
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v9, 0x6

    aput-byte v5, v3, v9

    .line 124
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v10, 0x7

    aput-byte v5, v3, v10

    .line 125
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v11, 0x8

    aput-byte v4, v3, v11

    .line 126
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v12, 0x9

    aput-byte v4, v3, v12

    .line 127
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v13, 0xa

    aput-byte v4, v3, v13

    .line 128
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v14, 0xb

    aput-byte v5, v3, v14

    .line 129
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v15, 0xc

    aput-byte v4, v3, v15

    .line 130
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v15, 0xd

    aput-byte v4, v3, v15

    .line 131
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v15, 0x22

    aput-byte v4, v3, v15

    .line 132
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v15, 0x5c

    aput-byte v4, v3, v15

    .line 134
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v2

    .line 135
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v4

    .line 136
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v6

    .line 137
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v7

    .line 138
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v5

    .line 139
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v8

    .line 140
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v9

    .line 141
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v10

    .line 142
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v11

    .line 143
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v12

    .line 144
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v13

    .line 145
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v14

    .line 146
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v16, 0xc

    aput-byte v4, v3, v16

    .line 147
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v16, 0xd

    aput-byte v4, v3, v16

    .line 148
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v15

    .line 149
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v16, 0x27

    aput-byte v4, v3, v16

    .line 151
    const/16 v3, 0xe

    .local v3, "i":I
    :goto_5
    const/16 v1, 0x1f

    if-gt v3, v1, :cond_a

    .line 152
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v1, v3

    .line 153
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v1, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x100

    goto :goto_5

    .line 156
    .end local v3    # "i":I
    :cond_a
    const/16 v1, 0x7f

    .local v1, "i":I
    :goto_6
    const/16 v3, 0xa0

    if-ge v1, v3, :cond_b

    .line 157
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v3, v1

    .line 158
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 161
    .end local v1    # "i":I
    :cond_b
    move v1, v2

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_e

    .line 162
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v16, v16, v1

    if-eqz v16, :cond_c

    move/from16 v16, v4

    goto :goto_8

    :cond_c
    move/from16 v16, v2

    :goto_8
    aput-boolean v16, v3, v1

    .line 163
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v16, v16, v1

    if-eqz v16, :cond_d

    move/from16 v16, v4

    goto :goto_9

    :cond_d
    move/from16 v16, v2

    :goto_9
    aput-boolean v16, v3, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 166
    .end local v1    # "i":I
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    .line 167
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x31

    aput-char v1, v0, v4

    .line 168
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x32

    aput-char v1, v0, v6

    .line 169
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x33

    aput-char v1, v0, v7

    .line 170
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x34

    aput-char v1, v0, v5

    .line 171
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x35

    aput-char v1, v0, v8

    .line 172
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x36

    aput-char v1, v0, v9

    .line 173
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x37

    aput-char v1, v0, v10

    .line 174
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x62

    aput-char v1, v0, v11

    .line 175
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x74

    aput-char v1, v0, v12

    .line 176
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v13

    .line 177
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x76

    aput-char v1, v0, v14

    .line 178
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0xc

    const/16 v3, 0x66

    aput-char v3, v0, v1

    .line 179
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0xd

    const/16 v3, 0x72

    aput-char v3, v0, v1

    .line 180
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x22

    const/16 v3, 0x22

    aput-char v3, v0, v1

    .line 181
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x27

    const/16 v3, 0x27

    aput-char v3, v0, v1

    .line 182
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v0, v1

    .line 183
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aput-char v15, v0, v15

    .line 186
    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 325
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 328
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 334
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 340
    new-array v0, v13, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    .line 379
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 380
    const/16 v1, 0x100

    new-array v0, v1, [I

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 382
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v1, v1

    .local v1, "iS":I
    :goto_a
    if-ge v0, v1, :cond_f

    .line 384
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 385
    .end local v0    # "i":I
    .end local v1    # "iS":I
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v1, 0x3d

    aput v2, v0, v1

    .line 386
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "x"    # Ljava/io/Closeable;

    .line 194
    if-eqz p0, :cond_0

    .line 196
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    :goto_0
    return-void
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 4
    .param p0, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p1, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "charByte"    # Ljava/nio/CharBuffer;

    .line 353
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 355
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 359
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    move-object v0, v1

    .line 361
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_1
    nop

    .line 369
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 367
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utf8 decode error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 531
    .local v0, "sLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    new-array v1, v1, [B

    return-object v1

    .line 535
    :cond_0
    const/4 v2, 0x0

    .local v2, "sIx":I
    add-int/lit8 v3, v0, -0x1

    .line 538
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 543
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 546
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v1

    .line 547
    .local v4, "pad":I
    :goto_2
    sub-int v5, v3, v2

    add-int/2addr v5, v6

    .line 548
    .local v5, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v7, v5, 0x4e

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    shl-int/lit8 v6, v7, 0x1

    goto :goto_4

    :cond_6
    move v6, v1

    .line 550
    .local v6, "sepCnt":I
    :goto_4
    sub-int v7, v5, v6

    mul-int/lit8 v7, v7, 0x6

    shr-int/lit8 v7, v7, 0x3

    sub-int/2addr v7, v4

    .line 551
    .local v7, "len":I
    new-array v8, v7, [B

    .line 554
    .local v8, "dArr":[B
    const/4 v9, 0x0

    .line 555
    .local v9, "d":I
    const/4 v10, 0x0

    .local v10, "cc":I
    div-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x3

    .local v11, "eLen":I
    :goto_5
    if-ge v9, v11, :cond_8

    .line 557
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v2, 0x1

    .local v13, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v12, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .local v14, "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "sIx":I
    invoke-virtual {p0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v12, v12, v14

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .line 558
    .restart local v14    # "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    or-int/2addr v2, v12

    .line 561
    .local v2, "i":I
    add-int/lit8 v12, v9, 0x1

    .local v12, "d":I
    shr-int/lit8 v13, v2, 0x10

    int-to-byte v13, v13

    aput-byte v13, v8, v9

    .line 562
    .end local v9    # "d":I
    add-int/lit8 v9, v12, 0x1

    .restart local v9    # "d":I
    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 563
    .end local v12    # "d":I
    add-int/lit8 v12, v9, 0x1

    .restart local v12    # "d":I
    int-to-byte v13, v2

    aput-byte v13, v8, v9

    .line 566
    .end local v9    # "d":I
    if-lez v6, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x13

    if-ne v10, v9, :cond_7

    .line 567
    add-int/lit8 v14, v14, 0x2

    .line 568
    const/4 v2, 0x0

    .line 570
    .end local v10    # "cc":I
    .local v2, "cc":I
    move v10, v2

    .end local v14    # "sIx":I
    .local v2, "sIx":I
    .restart local v10    # "cc":I
    :cond_7
    move v2, v14

    .line 555
    move v9, v12

    goto :goto_5

    .line 572
    .end local v10    # "cc":I
    .end local v11    # "eLen":I
    .end local v12    # "d":I
    .restart local v9    # "d":I
    :cond_8
    if-ge v9, v7, :cond_a

    .line 574
    const/4 v10, 0x0

    .line 575
    .local v10, "i":I
    nop

    .local v1, "j":I
    :goto_6
    sub-int v11, v3, v4

    if-gt v2, v11, :cond_9

    .line 576
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .local v12, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v11, v2

    mul-int/lit8 v11, v1, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    .line 575
    add-int/lit8 v1, v1, 0x1

    move v2, v12

    goto :goto_6

    .line 578
    .end local v1    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v1, 0x10

    .local v1, "r":I
    :goto_7
    if-ge v9, v7, :cond_a

    .line 579
    add-int/lit8 v11, v9, 0x1

    .local v11, "d":I
    shr-int v12, v10, v1

    int-to-byte v12, v12

    aput-byte v12, v8, v9

    .line 578
    .end local v9    # "d":I
    add-int/lit8 v1, v1, -0x8

    move v9, v11

    goto :goto_7

    .line 582
    .end local v1    # "r":I
    .end local v10    # "i":I
    .end local v11    # "d":I
    .restart local v9    # "d":I
    :cond_a
    return-object v8
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .locals 16
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    move-object/from16 v0, p0

    .line 460
    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 461
    new-array v2, v2, [B

    return-object v2

    .line 464
    :cond_0
    move/from16 v3, p1

    .local v3, "sIx":I
    add-int v4, p1, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 467
    .local v4, "eIx":I
    :goto_0
    if-ge v3, v4, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_1

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_1
    :goto_1
    if-lez v4, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_2

    .line 472
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v2

    .line 476
    .local v6, "pad":I
    :goto_2
    sub-int v7, v4, v3

    add-int/2addr v7, v5

    .line 477
    .local v7, "cCnt":I
    const/16 v8, 0x4c

    if-le v1, v8, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    div-int/lit8 v8, v7, 0x4e

    goto :goto_3

    :cond_5
    move v8, v2

    :goto_3
    shl-int/lit8 v5, v8, 0x1

    goto :goto_4

    :cond_6
    move v5, v2

    .line 479
    .local v5, "sepCnt":I
    :goto_4
    sub-int v8, v7, v5

    mul-int/lit8 v8, v8, 0x6

    shr-int/lit8 v8, v8, 0x3

    sub-int/2addr v8, v6

    .line 480
    .local v8, "len":I
    new-array v9, v8, [B

    .line 483
    .local v9, "bytes":[B
    const/4 v10, 0x0

    .line 484
    .local v10, "d":I
    const/4 v11, 0x0

    .local v11, "cc":I
    div-int/lit8 v12, v8, 0x3

    mul-int/lit8 v12, v12, 0x3

    .local v12, "eLen":I
    :goto_5
    if-ge v10, v12, :cond_8

    .line 486
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v3, 0x1

    .local v14, "sIx":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "sIx":I
    aget v3, v13, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v2, v14, 0x1

    .line 487
    .local v2, "sIx":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v3, v13

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v2, 0x1

    .line 488
    .restart local v14    # "sIx":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v13, v2

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .line 489
    .local v13, "sIx":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v3, v3, v14

    or-int/2addr v2, v3

    .line 492
    .local v2, "i":I
    add-int/lit8 v3, v10, 0x1

    .local v3, "d":I
    shr-int/lit8 v14, v2, 0x10

    int-to-byte v14, v14

    aput-byte v14, v9, v10

    .line 493
    .end local v10    # "d":I
    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "d":I
    shr-int/lit8 v14, v2, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v3

    .line 494
    .end local v3    # "d":I
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "d":I
    int-to-byte v14, v2

    aput-byte v14, v9, v10

    .line 497
    .end local v10    # "d":I
    if-lez v5, :cond_7

    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x13

    if-ne v11, v10, :cond_7

    .line 498
    add-int/lit8 v13, v13, 0x2

    .line 499
    const/4 v2, 0x0

    .line 501
    .end local v11    # "cc":I
    .local v2, "cc":I
    move v11, v2

    .line 484
    .end local v2    # "cc":I
    .restart local v11    # "cc":I
    :cond_7
    move v10, v3

    move v3, v13

    const/4 v2, 0x0

    goto :goto_5

    .line 503
    .end local v11    # "cc":I
    .end local v12    # "eLen":I
    .end local v13    # "sIx":I
    .local v3, "sIx":I
    .restart local v10    # "d":I
    :cond_8
    if-ge v10, v8, :cond_a

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, "i":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_6
    move v11, v15

    .end local v15    # "j":I
    .local v11, "j":I
    sub-int v12, v4, v6

    if-gt v3, v12, :cond_9

    .line 507
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v3, 0x1

    .restart local v13    # "sIx":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "sIx":I
    aget v3, v12, v3

    mul-int/lit8 v12, v11, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int/2addr v3, v12

    or-int/2addr v2, v3

    .line 506
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "j":I
    .restart local v15    # "j":I
    move v3, v13

    goto :goto_6

    .line 509
    .end local v13    # "sIx":I
    .end local v15    # "j":I
    .restart local v3    # "sIx":I
    :cond_9
    const/16 v11, 0x10

    .local v11, "r":I
    :goto_7
    if-ge v10, v8, :cond_a

    .line 510
    add-int/lit8 v12, v10, 0x1

    .local v12, "d":I
    shr-int v13, v2, v11

    int-to-byte v13, v13

    aput-byte v13, v9, v10

    .line 509
    .end local v10    # "d":I
    add-int/lit8 v11, v11, -0x8

    move v10, v12

    goto :goto_7

    .line 513
    .end local v2    # "i":I
    .end local v11    # "r":I
    .end local v12    # "d":I
    .restart local v10    # "d":I
    :cond_a
    return-object v9
.end method

.method public static decodeBase64([CII)[B
    .locals 15
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 402
    move/from16 v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    new-array v1, v1, [B

    return-object v1

    .line 406
    :cond_0
    move/from16 v2, p1

    .local v2, "sIx":I
    add-int v3, p1, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 409
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v6, p0, v2

    aget v5, v5, v6

    if-gez v5, :cond_1

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v6, p0, v3

    aget v5, v5, v6

    if-gez v5, :cond_2

    .line 414
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 417
    :cond_2
    aget-char v5, p0, v3

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, -0x1

    aget-char v5, p0, v5

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 418
    .local v5, "pad":I
    :goto_2
    sub-int v6, v3, v2

    add-int/2addr v6, v4

    .line 419
    .local v6, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    aget-char v7, p0, v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v7, v6, 0x4e

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    shl-int/lit8 v4, v7, 0x1

    goto :goto_4

    :cond_6
    move v4, v1

    .line 421
    .local v4, "sepCnt":I
    :goto_4
    sub-int v7, v6, v4

    mul-int/lit8 v7, v7, 0x6

    shr-int/lit8 v7, v7, 0x3

    sub-int/2addr v7, v5

    .line 422
    .local v7, "len":I
    new-array v8, v7, [B

    .line 425
    .local v8, "bytes":[B
    const/4 v9, 0x0

    .line 426
    .local v9, "d":I
    const/4 v10, 0x0

    .local v10, "cc":I
    div-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x3

    .local v11, "eLen":I
    :goto_5
    if-ge v9, v11, :cond_8

    .line 428
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v2, 0x1

    .local v13, "sIx":I
    aget-char v2, p0, v2

    .end local v2    # "sIx":I
    aget v2, v12, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .local v14, "sIx":I
    aget-char v13, p0, v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "sIx":I
    aget-char v14, p0, v14

    .end local v14    # "sIx":I
    aget v12, v12, v14

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .restart local v14    # "sIx":I
    aget-char v13, p0, v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    or-int/2addr v2, v12

    .line 431
    .local v2, "i":I
    add-int/lit8 v12, v9, 0x1

    .local v12, "d":I
    shr-int/lit8 v13, v2, 0x10

    int-to-byte v13, v13

    aput-byte v13, v8, v9

    .line 432
    .end local v9    # "d":I
    add-int/lit8 v9, v12, 0x1

    .restart local v9    # "d":I
    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 433
    .end local v12    # "d":I
    add-int/lit8 v12, v9, 0x1

    .restart local v12    # "d":I
    int-to-byte v13, v2

    aput-byte v13, v8, v9

    .line 436
    .end local v9    # "d":I
    if-lez v4, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x13

    if-ne v10, v9, :cond_7

    .line 437
    add-int/lit8 v14, v14, 0x2

    .line 438
    const/4 v2, 0x0

    .line 440
    .end local v10    # "cc":I
    .local v2, "cc":I
    move v10, v2

    .end local v14    # "sIx":I
    .local v2, "sIx":I
    .restart local v10    # "cc":I
    :cond_7
    move v2, v14

    .line 426
    move v9, v12

    goto :goto_5

    .line 442
    .end local v10    # "cc":I
    .end local v11    # "eLen":I
    .end local v12    # "d":I
    .restart local v9    # "d":I
    :cond_8
    if-ge v9, v7, :cond_a

    .line 444
    const/4 v10, 0x0

    .line 445
    .local v10, "i":I
    nop

    .local v1, "j":I
    :goto_6
    sub-int v11, v3, v5

    if-gt v2, v11, :cond_9

    .line 446
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .local v12, "sIx":I
    aget-char v2, p0, v2

    .end local v2    # "sIx":I
    aget v2, v11, v2

    mul-int/lit8 v11, v1, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    .line 445
    add-int/lit8 v1, v1, 0x1

    move v2, v12

    goto :goto_6

    .line 448
    .end local v1    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v1, 0x10

    .local v1, "r":I
    :goto_7
    if-ge v9, v7, :cond_a

    .line 449
    add-int/lit8 v11, v9, 0x1

    .local v11, "d":I
    shr-int v12, v10, v1

    int-to-byte v12, v12

    aput-byte v12, v8, v9

    .line 448
    .end local v9    # "d":I
    add-int/lit8 v1, v1, -0x8

    move v9, v11

    goto :goto_7

    .line 452
    .end local v1    # "r":I
    .end local v10    # "i":I
    .end local v11    # "d":I
    .restart local v9    # "d":I
    :cond_a
    return-object v8
.end method

.method public static decodeUTF8([BII[C)I
    .locals 11
    .param p0, "sa"    # [B
    .param p1, "sp"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [C

    .line 655
    add-int v0, p1, p2

    .line 656
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 657
    .local v1, "dp":I
    array-length v2, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 660
    .local v2, "dlASCII":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, p1

    if-ltz v3, :cond_0

    .line 661
    add-int/lit8 v3, v1, 0x1

    .local v3, "dp":I
    add-int/lit8 v4, p1, 0x1

    .local v4, "sp":I
    aget-byte p1, p0, p1

    .end local p1    # "sp":I
    int-to-char p1, p1

    aput-char p1, p3, v1

    .line 657
    .end local v1    # "dp":I
    move v1, v3

    move p1, v4

    goto :goto_0

    .line 663
    .end local v3    # "dp":I
    .end local v4    # "sp":I
    .restart local v1    # "dp":I
    .restart local p1    # "sp":I
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_10

    .line 664
    add-int/lit8 v3, p1, 0x1

    .local v3, "sp":I
    aget-byte p1, p0, p1

    .line 665
    .local p1, "b1":I
    if-ltz p1, :cond_1

    .line 667
    add-int/lit8 v4, v1, 0x1

    .local v4, "dp":I
    int-to-char v5, p1

    aput-char v5, p3, v1

    .line 738
    .end local v1    # "dp":I
    .end local p1    # "b1":I
    nop

    .line 663
    move p1, v3

    move v1, v4

    goto :goto_1

    .line 668
    .end local v4    # "dp":I
    .restart local v1    # "dp":I
    .restart local p1    # "b1":I
    :cond_1
    shr-int/lit8 v4, p1, 0x5

    const/4 v5, -0x2

    const/16 v6, 0x80

    const/4 v7, -0x1

    if-ne v4, v5, :cond_4

    and-int/lit8 v4, p1, 0x1e

    if-eqz v4, :cond_4

    .line 670
    if-ge v3, v0, :cond_3

    .line 671
    add-int/lit8 v4, v3, 0x1

    .local v4, "sp":I
    aget-byte v3, p0, v3

    .line 672
    .local v3, "b2":I
    and-int/lit16 v5, v3, 0xc0

    if-eq v5, v6, :cond_2

    .line 673
    return v7

    .line 675
    :cond_2
    add-int/lit8 v5, v1, 0x1

    .local v5, "dp":I
    shl-int/lit8 v6, p1, 0x6

    xor-int/2addr v6, v3

    xor-int/lit16 v6, v6, 0xf80

    int-to-char v6, v6

    aput-char v6, p3, v1

    .line 679
    .end local v1    # "dp":I
    nop

    .line 663
    move p1, v4

    move v1, v5

    goto :goto_1

    .line 681
    .end local v4    # "sp":I
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    .local v3, "sp":I
    :cond_3
    return v7

    .line 682
    :cond_4
    shr-int/lit8 v4, p1, 0x4

    if-ne v4, v5, :cond_b

    .line 684
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_a

    .line 685
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "sp":I
    aget-byte v3, p0, v3

    .line 686
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "sp":I
    aget-byte v4, p0, v4

    .line 687
    .local v4, "b3":I
    const/16 v8, -0x20

    if-ne p1, v8, :cond_5

    and-int/lit16 v8, v3, 0xe0

    if-eq v8, v6, :cond_9

    :cond_5
    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v6, :cond_9

    and-int/lit16 v8, v4, 0xc0

    if-eq v8, v6, :cond_6

    goto :goto_3

    .line 692
    :cond_6
    shl-int/lit8 v6, p1, 0xc

    shl-int/lit8 v8, v3, 0x6

    xor-int/2addr v6, v8

    const v8, -0x1e080

    xor-int/2addr v8, v4

    xor-int/2addr v6, v8

    int-to-char v6, v6

    .line 698
    .local v6, "c":C
    const v8, 0xd800

    if-lt v6, v8, :cond_7

    const v8, 0xe000

    if-ge v6, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 699
    .local v8, "isSurrogate":Z
    :goto_2
    if-eqz v8, :cond_8

    .line 700
    return v7

    .line 702
    :cond_8
    add-int/lit8 v7, v1, 0x1

    .local v7, "dp":I
    aput-char v6, p3, v1

    .line 705
    .end local v1    # "dp":I
    .end local v6    # "c":C
    .end local v8    # "isSurrogate":Z
    nop

    .line 663
    move p1, v5

    move v1, v7

    goto :goto_1

    .line 690
    .end local v7    # "dp":I
    .restart local v1    # "dp":I
    :cond_9
    :goto_3
    return v7

    .line 707
    .end local v4    # "b3":I
    .end local v5    # "sp":I
    .local v3, "sp":I
    :cond_a
    return v7

    .line 708
    :cond_b
    shr-int/lit8 v4, p1, 0x3

    if-ne v4, v5, :cond_f

    .line 710
    add-int/lit8 v4, v3, 0x2

    if-ge v4, v0, :cond_e

    .line 711
    add-int/lit8 v4, v3, 0x1

    .local v4, "sp":I
    aget-byte v3, p0, v3

    .line 712
    .local v3, "b2":I
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "sp":I
    aget-byte v4, p0, v4

    .line 713
    .local v4, "b3":I
    add-int/lit8 v8, v5, 0x1

    .local v8, "sp":I
    aget-byte v5, p0, v5

    .line 714
    .local v5, "b4":I
    shl-int/lit8 v9, p1, 0x12

    shl-int/lit8 v10, v3, 0xc

    xor-int/2addr v9, v10

    shl-int/lit8 v10, v4, 0x6

    xor-int/2addr v9, v10

    const v10, 0x381f80

    xor-int/2addr v10, v5

    xor-int/2addr v9, v10

    .line 722
    .local v9, "uc":I
    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v6, :cond_d

    and-int/lit16 v10, v4, 0xc0

    if-ne v10, v6, :cond_d

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v6, :cond_d

    const/high16 v6, 0x10000

    if-lt v9, v6, :cond_d

    const/high16 v6, 0x110000

    if-lt v9, v6, :cond_c

    goto :goto_4

    .line 729
    :cond_c
    add-int/lit8 v6, v1, 0x1

    .local v6, "dp":I
    ushr-int/lit8 v7, v9, 0xa

    const v10, 0xd7c0

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p3, v1

    .line 730
    .end local v1    # "dp":I
    add-int/lit8 v1, v6, 0x1

    .restart local v1    # "dp":I
    and-int/lit16 v7, v9, 0x3ff

    const v10, 0xdc00

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p3, v6

    .line 732
    .end local v6    # "dp":I
    nop

    .line 663
    move p1, v8

    goto/16 :goto_1

    .line 727
    :cond_d
    :goto_4
    return v7

    .line 734
    .end local v4    # "b3":I
    .end local v5    # "b4":I
    .end local v8    # "sp":I
    .end local v9    # "uc":I
    .local v3, "sp":I
    :cond_e
    return v7

    .line 736
    :cond_f
    return v7

    .line 739
    .end local v3    # "sp":I
    .local p1, "sp":I
    :cond_10
    return v1
.end method

.method public static encodeUTF8([CII[B)I
    .locals 11
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "bytes"    # [B

    .line 586
    add-int v0, p1, p2

    .line 587
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 588
    .local v1, "dp":I
    array-length v2, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 591
    .local v2, "dlASCII":I
    :goto_0
    const/16 v3, 0x80

    if-ge v1, v2, :cond_0

    aget-char v4, p0, p1

    if-ge v4, v3, :cond_0

    .line 592
    add-int/lit8 v3, v1, 0x1

    .local v3, "dp":I
    add-int/lit8 v4, p1, 0x1

    .local v4, "offset":I
    aget-char p1, p0, p1

    .end local p1    # "offset":I
    int-to-byte p1, p1

    aput-byte p1, p3, v1

    .line 588
    .end local v1    # "dp":I
    move v1, v3

    move p1, v4

    goto :goto_0

    .line 595
    .end local v3    # "dp":I
    .end local v4    # "offset":I
    .restart local v1    # "dp":I
    .restart local p1    # "offset":I
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_9

    .line 596
    add-int/lit8 v4, p1, 0x1

    .restart local v4    # "offset":I
    aget-char p1, p0, p1

    .line 597
    .local p1, "c":C
    if-ge p1, v3, :cond_1

    .line 599
    add-int/lit8 v5, v1, 0x1

    .local v5, "dp":I
    int-to-byte v6, p1

    aput-byte v6, p3, v1

    .line 647
    .end local v4    # "offset":I
    .end local v5    # "dp":I
    .local p1, "offset":I
    :goto_2
    move p1, v4

    move v1, v5

    goto/16 :goto_6

    .line 600
    .restart local v4    # "offset":I
    .local p1, "c":C
    :cond_1
    const/16 v5, 0x800

    if-ge p1, v5, :cond_2

    .line 602
    add-int/lit8 v5, v1, 0x1

    .restart local v5    # "dp":I
    const/16 v6, 0xc0

    shr-int/lit8 v7, p1, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    .line 603
    .end local v1    # "dp":I
    add-int/lit8 v1, v5, 0x1

    .restart local v1    # "dp":I
    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 647
    .end local v4    # "offset":I
    .end local v5    # "dp":I
    .local p1, "offset":I
    :goto_3
    move p1, v4

    goto/16 :goto_6

    .line 604
    .restart local v4    # "offset":I
    .local p1, "c":C
    :cond_2
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt p1, v5, :cond_8

    const v7, 0xe000

    if-ge p1, v7, :cond_8

    .line 606
    add-int/lit8 v8, v4, -0x1

    .line 607
    .local v8, "ip":I
    const v9, 0xdc00

    if-lt p1, v5, :cond_5

    if-ge p1, v9, :cond_5

    .line 608
    sub-int v5, v0, v8

    const/4 v10, 0x2

    if-ge v5, v10, :cond_3

    .line 609
    const/4 v5, -0x1

    .local v5, "uc":I
    goto :goto_4

    .line 611
    .end local v5    # "uc":I
    :cond_3
    add-int/lit8 v5, v8, 0x1

    aget-char v5, p0, v5

    .line 613
    .local v5, "d":C
    if-lt v5, v9, :cond_4

    if-ge v5, v7, :cond_4

    .line 614
    shl-int/lit8 v7, p1, 0xa

    add-int/2addr v7, v5

    const v9, -0x35fdc00

    add-int/2addr v7, v9

    .line 618
    .end local v5    # "d":C
    .local v7, "uc":I
    nop

    .line 620
    nop

    .line 628
    move v5, v7

    goto :goto_4

    .line 617
    .end local v7    # "uc":I
    .restart local v5    # "d":C
    :cond_4
    add-int/lit8 v7, v1, 0x1

    .local v7, "dp":I
    aput-byte v6, p3, v1

    .line 618
    .end local v1    # "dp":I
    nop

    .line 595
    move p1, v4

    move v1, v7

    goto :goto_1

    .line 623
    .end local v5    # "d":C
    .end local v7    # "dp":I
    .restart local v1    # "dp":I
    :cond_5
    if-lt p1, v9, :cond_6

    if-ge p1, v7, :cond_6

    .line 624
    add-int/lit8 v5, v1, 0x1

    .local v5, "dp":I
    aput-byte v6, p3, v1

    .line 625
    .end local v1    # "dp":I
    nop

    .line 595
    move p1, v4

    move v1, v5

    goto :goto_1

    .line 628
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_6
    move v5, p1

    .line 632
    .local v5, "uc":I
    :goto_4
    if-gez v5, :cond_7

    .line 633
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "dp":I
    aput-byte v6, p3, v1

    .line 641
    .end local v1    # "dp":I
    move v1, v7

    goto :goto_5

    .line 635
    .end local v7    # "dp":I
    .restart local v1    # "dp":I
    :cond_7
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "dp":I
    const/16 v9, 0xf0

    shr-int/lit8 v10, v5, 0x12

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p3, v1

    .line 636
    .end local v1    # "dp":I
    add-int/lit8 v1, v7, 0x1

    .restart local v1    # "dp":I
    shr-int/lit8 v9, v5, 0xc

    and-int/2addr v9, v6

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, p3, v7

    .line 637
    .end local v7    # "dp":I
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "dp":I
    shr-int/lit8 v9, v5, 0x6

    and-int/2addr v6, v9

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    .line 638
    .end local v1    # "dp":I
    add-int/lit8 v1, v7, 0x1

    .restart local v1    # "dp":I
    and-int/lit8 v6, v5, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v7

    .line 639
    .end local v7    # "dp":I
    add-int/lit8 v4, v4, 0x1

    .line 641
    .end local v5    # "uc":I
    .end local v8    # "ip":I
    :goto_5
    goto :goto_3

    .line 643
    :cond_8
    add-int/lit8 v5, v1, 0x1

    .local v5, "dp":I
    const/16 v7, 0xe0

    shr-int/lit8 v8, p1, 0xc

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v1

    .line 644
    .end local v1    # "dp":I
    add-int/lit8 v1, v5, 0x1

    .restart local v1    # "dp":I
    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v6, v7

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 645
    .end local v5    # "dp":I
    add-int/lit8 v5, v1, 0x1

    .restart local v5    # "dp":I
    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p3, v1

    .end local v1    # "dp":I
    .end local p1    # "c":C
    goto/16 :goto_2

    .line 647
    .end local v4    # "offset":I
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    .local p1, "offset":I
    :goto_6
    goto/16 :goto_1

    .line 648
    :cond_9
    return v1
.end method

.method public static firstIdentifier(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 372
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getChars(BI[C)V
    .locals 6
    .param p0, "b"    # B
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 298
    move v0, p0

    .line 300
    .local v0, "i":I
    move v1, p1

    .line 301
    .local v1, "charPos":I
    const/4 v2, 0x0

    .line 303
    .local v2, "sign":C
    if-gez v0, :cond_0

    .line 304
    const/16 v2, 0x2d

    .line 305
    neg-int v0, v0

    .line 311
    :cond_0
    const v3, 0xcccd

    mul-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x13

    .line 312
    .local v3, "q":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 313
    .local v4, "r":I
    add-int/lit8 v1, v1, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p2, v1

    .line 314
    move v0, v3

    .line 315
    if-nez v0, :cond_0

    .line 317
    if-eqz v2, :cond_1

    .line 318
    add-int/lit8 v1, v1, -0x1

    aput-char v2, p2, v1

    .line 320
    :cond_1
    return-void
.end method

.method public static getChars(II[C)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 266
    move v0, p1

    .line 267
    .local v0, "p":I
    const/4 v1, 0x0

    .line 269
    .local v1, "sign":C
    if-gez p0, :cond_0

    .line 270
    const/16 v1, 0x2d

    .line 271
    neg-int p0, p0

    .line 274
    :cond_0
    :goto_0
    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_1

    .line 275
    div-int/lit8 v2, p0, 0x64

    .line 277
    .local v2, "q":I
    shl-int/lit8 v3, v2, 0x6

    shl-int/lit8 v4, v2, 0x5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 278
    .local v3, "r":I
    move p0, v2

    .line 279
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 280
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    goto :goto_0

    .line 286
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_1
    const v2, 0xcccd

    mul-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x13

    .line 287
    .restart local v2    # "q":I
    shl-int/lit8 v3, v2, 0x3

    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    sub-int v3, p0, v3

    .line 288
    .restart local v3    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v4, v4, v3

    aput-char v4, p2, v0

    .line 289
    move p0, v2

    .line 290
    if-nez p0, :cond_1

    .line 292
    if-eqz v1, :cond_2

    .line 293
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p2, v0

    .line 295
    :cond_2
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 8
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .line 216
    move v0, p2

    .line 217
    .local v0, "charPos":I
    const/4 v1, 0x0

    .line 219
    .local v1, "sign":C
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 220
    const/16 v1, 0x2d

    .line 221
    neg-long p0, p0

    .line 225
    :cond_0
    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 226
    const-wide/16 v2, 0x64

    div-long v2, p0, v2

    .line 228
    .local v2, "q":J
    const/4 v4, 0x6

    shl-long v4, v2, v4

    const/4 v6, 0x5

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long v6, v2, v6

    add-long/2addr v4, v6

    sub-long v4, p0, v4

    long-to-int v4, v4

    .line 229
    .local v4, "r":I
    move-wide p0, v2

    .line 230
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 231
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_0

    .line 236
    .end local v2    # "q":J
    .end local v4    # "r":I
    :cond_1
    long-to-int v2, p0

    .line 237
    .local v2, "i2":I
    :goto_1
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    .line 238
    div-int/lit8 v3, v2, 0x64

    .line 240
    .local v3, "q2":I
    shl-int/lit8 v4, v3, 0x6

    shl-int/lit8 v5, v3, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 241
    .restart local v4    # "r":I
    move v2, v3

    .line 242
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 243
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    goto :goto_1

    .line 249
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_2
    const v3, 0xcccd

    mul-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0x13

    .line 250
    .restart local v3    # "q2":I
    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 251
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v4

    aput-char v5, p3, v0

    .line 252
    move v2, v3

    .line 253
    if-nez v2, :cond_2

    .line 255
    if-eqz v1, :cond_3

    .line 256
    add-int/lit8 v0, v0, -0x1

    aput-char v1, p3, v0

    .line 258
    :cond_3
    return-void
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 85
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static isIdent(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 376
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 769
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 770
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 771
    .local v3, "ch":C
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 772
    return v0

    .line 769
    .end local v3    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_3
    :goto_1
    return v0
.end method

.method public static loadPropertiesFromFile()V
    .locals 2

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 100
    .local v0, "imputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 108
    :cond_0
    :goto_0
    return-void
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    :try_start_0
    new-array v1, v1, [C

    .line 751
    .local v1, "chars":[C
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .local v2, "len":I
    if-gez v2, :cond_0

    .line 753
    nop

    .line 759
    .end local v1    # "chars":[C
    .end local v2    # "len":I
    nop

    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 755
    .restart local v1    # "chars":[C
    .restart local v2    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 756
    .end local v2    # "len":I
    goto :goto_0

    .line 757
    .end local v1    # "chars":[C
    :catch_0
    move-exception v1

    .line 758
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "read string from reader error"

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 346
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 5
    .param p0, "x"    # J

    .line 205
    const-wide/16 v0, 0xa

    .line 206
    .local v0, "p":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 207
    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    return v2

    .line 208
    :cond_0
    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_1
    return v3
.end method
