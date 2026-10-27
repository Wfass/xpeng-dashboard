.class public Lcom/xiaopeng/factory/utils/DataHelp;
.super Ljava/lang/Object;
.source "DataHelp.java"


# static fields
.field private static final SEC_IV:Ljava/lang/String; = "5s9F1pGR@VJZ8F3I"

.field public static final SEC_SALT:Ljava/lang/String; = "oBPMlkqO4eBRBa@N*zIGdRokeikjKbIg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2ToInt([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 54
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 55
    .local v0, "s":S
    return v0
.end method

.method public static byteArrayToHexStr([B)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B

    .line 151
    const-string v0, "0123456789ABCDEF"

    .line 152
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 153
    const-string v1, ""

    return-object v1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 157
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 158
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

    .line 159
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 167
    const-string v0, "0123456789ABCDEF"

    .line 168
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 169
    const-string v1, ""

    return-object v1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 173
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 174
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

    .line 175
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToStr([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 120
    const-string v0, ""

    .line 121
    .local v0, "res":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 122
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 124
    :cond_0
    return-object v0
.end method

.method public static varargs byteMerger([[B)[B
    .locals 7
    .param p0, "values"    # [[B

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "length_byte":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "length_byte":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 130
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    new-array v0, v2, [B

    .line 133
    .local v0, "all_byte":[B
    const/4 v3, 0x0

    .line 134
    .local v3, "countLength":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "countLength":I
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 135
    aget-object v5, p0, v3

    .line 136
    .local v5, "b":[B
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    array-length v6, v5

    add-int/2addr v4, v6

    .line 134
    .end local v5    # "b":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public static byteSub([BII)[B
    .locals 3
    .param p0, "src"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 143
    new-array v0, p2, [B

    .line 144
    .local v0, "res":[B
    if-eqz p0, :cond_0

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public static byteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 36
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static bytes2Double([B)D
    .locals 6
    .param p0, "arr"    # [B

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 85
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    mul-int/2addr v3, v2

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static bytes2ToInt([B)I
    .locals 2
    .param p0, "src"    # [B

    .line 48
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 50
    .local v0, "value":I
    return v0
.end method

.method public static bytesToLong([B)J
    .locals 3
    .param p0, "bytes"    # [B

    .line 97
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static checkBytes([B[B)Z
    .locals 4
    .param p0, "argu"    # [B
    .param p1, "argv"    # [B

    .line 213
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 214
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    .line 215
    return v0

    .line 213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static convert64Byte([B)[B
    .locals 5
    .param p0, "buf"    # [B

    .line 197
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 198
    .local v1, "bytes64":[B
    const/4 v2, 0x0

    move v3, v2

    .line 199
    .local v3, "index":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 200
    if-lt v3, v0, :cond_0

    .line 201
    goto :goto_1

    .line 203
    :cond_0
    aget-byte v4, p0, v3

    aput-byte v4, v1, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    .line 207
    aput-byte v2, v1, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    :cond_2
    return-object v1
.end method

.method public static decrypt([B[B)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 256
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 257
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 258
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "5s9F1pGR@VJZ8F3I"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 259
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 260
    .end local v0    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static double2Bytes(D)[B
    .locals 9
    .param p0, "d"    # D

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 75
    .local v0, "value":J
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 76
    .local v3, "byteRet":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 77
    mul-int v5, v2, v4

    shr-long v5, v0, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;
    .locals 5
    .param p0, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 232
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/xiaopeng/lib/http/server/ServerBean;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;-><init>()V

    .line 234
    .local v1, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setCode(I)V

    .line 235
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :try_start_1
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    .line 245
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    goto :goto_1

    .line 242
    .end local v1    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "var5":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 244
    .restart local v1    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parser the response data. response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "var5":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public static hex2decimal(Ljava/lang/String;)I
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .line 110
    const/4 v0, -0x1

    .line 112
    .local v0, "value":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 188
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 188
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static intToByte(I)B
    .locals 1
    .param p0, "x"    # I

    .line 26
    int-to-byte v0, p0

    return v0
.end method

.method public static intToByte1(I)[B
    .locals 3
    .param p0, "x"    # I

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static intToBytes2(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 41
    .local v0, "src":[B
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 42
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 43
    return-object v0
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 223
    .local v0, "res":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 224
    invoke-static {p1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .line 91
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static strToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "res":[B
    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public static unsignedBytes2ToInt([B)I
    .locals 2
    .param p0, "src"    # [B

    .line 60
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 62
    .local v0, "value":I
    return v0
.end method
