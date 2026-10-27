.class public Lcom/xiaopeng/devtools/utils/d;
.super Ljava/lang/Object;
.source "DataHelp.java"


# static fields
.field public static final pa:Ljava/nio/charset/Charset;

.field public static final pb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/utils/d;->pa:Ljava/nio/charset/Charset;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/devtools/utils/d;->pb:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xc
        0x10
        0x14
        0x18
        0x20
        0x30
        0x40
    .end array-data
.end method

.method public static B([B)I
    .locals 1

    .line 81
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    .line 82
    return p0
.end method

.method public static C([B)I
    .locals 1

    .line 86
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 87
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;
    .locals 5

    .line 178
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/xiaopeng/lib/http/a/a;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/a/a;-><init>()V

    .line 180
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/a/a;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 183
    :try_start_1
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/a/a;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    goto :goto_0

    .line 184
    :catch_0
    move-exception p0

    .line 187
    :goto_0
    :try_start_2
    const-string p0, "msg"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/lib/http/a/a;->dD(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    goto :goto_1

    .line 188
    :catch_1
    move-exception p0

    .line 193
    :goto_1
    goto :goto_2

    .line 190
    :catch_2
    move-exception v0

    .line 191
    const/4 v1, 0x0

    .line 192
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parser the response data. response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :goto_2
    return-object v1
.end method

.method private static a(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 2

    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 315
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->length()I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public static a(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 1

    .line 319
    sget-object v0, Lcom/xiaopeng/devtools/utils/d;->pa:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/devtools/utils/d;->b(Ljava/util/BitSet;II)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/devtools/utils/d;->a(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 4

    .line 141
    const-string v0, "0123456789ABCDEF"

    .line 142
    if-nez p0, :cond_0

    .line 143
    const-string p0, ""

    return-object p0

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 147
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 148
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    if-eqz p1, :cond_1

    .line 150
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BI[BI)[B
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 131
    return-object p0
.end method

.method public static b(B)I
    .locals 0

    .line 72
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static b(Ljava/util/BitSet;II)[B
    .locals 4

    .line 323
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 324
    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    .line 325
    sub-int v2, v1, p1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x8

    invoke-static {p0, v1, v3}, Lcom/xiaopeng/devtools/utils/d;->c(Ljava/util/BitSet;II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 324
    move v1, v3

    goto :goto_0

    .line 327
    :cond_0
    return-object v0
.end method

.method public static bI(I)Ljava/lang/String;
    .locals 6

    .line 209
    const-string v0, "defkSTUB345opqCDElxyzA26cQRF8IYZ0mJabKLMuPvwNOGHVWXnrst179"

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 211
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 212
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_0

    .line 214
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 215
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/BitSet;II)I
    .locals 7

    .line 331
    nop

    .line 332
    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 333
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int v5, v0, p1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return v1
.end method

.method public static c([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 268
    nop

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 270
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    nop

    .line 273
    nop

    .line 277
    const/4 v1, 0x1

    goto :goto_1

    .line 270
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    return v1
.end method

.method public static c([BII)[B
    .locals 2

    .line 135
    new-array v0, p2, [B

    .line 136
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    return-object v0
.end method

.method public static cC(I)I
    .locals 1

    .line 46
    nop

    .line 47
    sget-object v0, Lcom/xiaopeng/devtools/utils/d;->pb:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 48
    sget-object v0, Lcom/xiaopeng/devtools/utils/d;->pb:[I

    aget p0, v0, p0

    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static cs(Ljava/lang/String;)I
    .locals 1

    .line 105
    nop

    .line 107
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static ct(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 282
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 285
    nop

    .line 286
    nop

    .line 288
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p0

    .line 289
    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p0

    .line 291
    const-string v0, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkAddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    .line 294
    const-string v0, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inetaddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    .line 297
    if-eqz p0, :cond_1

    .line 298
    const-string v0, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :cond_0
    move-object p0, v1

    .line 307
    :cond_1
    :goto_0
    return-object p0

    .line 303
    :catch_0
    move-exception p0

    .line 304
    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    return-object v1
.end method

.method public static d(Ljava/util/BitSet;II)J
    .locals 7

    .line 341
    nop

    .line 342
    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 343
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    long-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int v5, v0, p1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return-wide v1
.end method

.method public static d(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
    .locals 2

    .line 199
    nop

    .line 201
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    .line 204
    move v0, p0

    goto :goto_0

    .line 201
    :cond_0
    nop

    .line 204
    :goto_0
    goto :goto_1

    .line 202
    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    :goto_1
    return v0
.end method

.method public static e(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 0

    .line 351
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/devtools/utils/d;->b(Ljava/util/BitSet;II)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 264
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(J)Ljava/lang/String;
    .locals 4

    .line 239
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 240
    nop

    .line 241
    const-string v1, "0B"

    .line 242
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 243
    return-object v1

    .line 245
    :cond_0
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 247
    :cond_1
    const-wide/32 v1, 0x100000

    cmp-long v1, p0, v1

    if-gez v1, :cond_2

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 249
    :cond_2
    const-wide/32 v1, 0x40000000

    cmp-long v1, p0, v1

    if-gez v1, :cond_3

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 252
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    :goto_0
    return-object p0
.end method

.method public static t([B)I
    .locals 2

    .line 93
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 95
    return p0
.end method
