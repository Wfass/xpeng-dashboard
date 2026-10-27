.class public final Lcom/nforetek/util/normal/NfUtils;
.super Ljava/lang/Object;
.source "NfUtils.java"


# static fields
.field static final BD_ADDR_LEN:I = 0x6

.field static final TAG:Ljava/lang/String; = "NfUtils"

.field static decodeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 117
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 118
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createPhotoFile(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "photo"    # [B

    .line 196
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 200
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nforetek/bt/res/NfDef;->PBAP_PHOTO_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "outDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "NfUtils"

    const-string v2, "Piggy Check can\'t create folder !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v1, ""

    return-object v1

    .line 211
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v1, "f":Ljava/io/File;
    const-string v2, "NfUtils"

    const-string v3, "Piggy Check Before check readable/writeable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/File;->setReadable(Z)Z

    .line 214
    const-string v3, "NfUtils"

    const-string v4, "Piggy Check After set readable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v1, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 216
    const-string v2, "NfUtils"

    const-string v3, "Piggy Check After set writeable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 220
    const-string v2, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Piggy Check File Name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 228
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    :catch_1
    move-exception v2

    .line 231
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 236
    .end local v0    # "outDir":Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static decodePhoto([B)[B
    .locals 5
    .param p0, "photo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 275
    sget v0, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    .line 276
    const-string v0, "NfUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Piggy Check decodePhoto() start. count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .local v1, "base64_decodeArray":[B
    nop

    .line 283
    nop

    .line 285
    if-eqz v1, :cond_0

    .line 286
    const-string v2, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "base64_decodeArray length is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nforetek/util/normal/NfLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    goto :goto_0

    .line 289
    :cond_0
    const-string v2, "NfUtils"

    const-string v3, "base64_decodeArray is null."

    invoke-static {v2, v3}, Lcom/nforetek/util/normal/NfLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 294
    sget v2, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    .line 295
    const-string v2, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Piggy Check decodePhoto() bitmap is null. count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v1

    .line 298
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    .local v2, "blob":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 300
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 301
    .local v3, "bitmapData":[B
    sget v4, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    .line 304
    return-object v3

    .line 281
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "base64_decodeArray":[B
    .end local v2    # "blob":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bitmapData":[B
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget v1, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/nforetek/util/normal/NfUtils;->decodeCount:I

    .line 283
    throw v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x1

    return v1

    .line 182
    :cond_0
    const-string v1, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") delete fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v2

    .line 187
    :cond_1
    const-string v1, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v2
.end method

.method private dumpBtConfig()V
    .locals 5

    .line 99
    const-string v0, "/data/misc/bluedroid/bt_config.xml"

    .line 100
    .local v0, "resultPath":Ljava/lang/String;
    const-string v1, ""

    .line 102
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/nforetek/util/normal/NfUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 103
    const-string v2, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Piggy Check bt_config.xml dump:\n|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "90:b9:31:14:e3:da"

    invoke-direct {p0, v1, v2}, Lcom/nforetek/util/normal/NfUtils;->parseAddressContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static getAddressStringFromByte([B)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # [B

    .line 51
    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "%02X:%02X:%02X:%02X:%02X:%02X"

    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    const/4 v2, 0x0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 57
    const/4 v2, 0x5

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytesFromAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "j":I
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 39
    .local v1, "output":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 47
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    .line 41
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "fl":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/nforetek/util/normal/NfUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 130
    return-object v2
.end method

.method public static isFilePathValid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_0
    const-string v1, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t write."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v2

    .line 320
    :cond_1
    const-string v1, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not folder."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v2
.end method

.method private parseAddressContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 135
    const-string v0, ""

    .line 136
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 137
    .local v1, "temp":Ljava/lang/String;
    const-string v2, ""

    .line 138
    .local v2, "addressHeader":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 139
    .local v3, "end":I
    const-string v4, "NfUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Piggy Check start: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    add-int/lit8 v4, v3, -0xa

    .line 141
    .local v4, "start":I
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check temp: |"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 144
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 145
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check start: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check end: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-ge v3, v4, :cond_0

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check temp: |"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const-string v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 152
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 153
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check addressHeader: |"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Tag=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "dataStart":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "</"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "dataEnd":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 159
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 160
    const-string v7, "NfUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Piggy Check start: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v7, "NfUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Piggy Check end: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v7, "AvrcpVersion"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 165
    add-int/lit8 v7, v3, 0x5

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 166
    const-string v7, "NfUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Piggy Check start: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v7, "NfUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Piggy Check end: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v7, "NfUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Piggy Check result: |"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    return-object v0
.end method

.method public static printAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const-string v1, ""

    .line 68
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 69
    goto :goto_0

    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NfUtils"

    const-string v4, "Exception when getting package information !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 73
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 74
    .local v2, "pn":Ljava/lang/String;
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 75
    .local v3, "vc":I
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 77
    .local v4, "vn":Ljava/lang/String;
    const-string v5, "NfUtils"

    const-string v6, "+++++++++++++++++++++++++ nFore +++++++++++++++++++++++++"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "        Package Name : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "        Version Code : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "        Version Name : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v5, "NfUtils"

    const-string v6, "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object v1, v4

    .line 84
    .end local v2    # "pn":Ljava/lang/String;
    .end local v3    # "vc":I
    .end local v4    # "vn":Ljava/lang/String;
    goto :goto_1

    .line 86
    :cond_0
    const-string v2, "NfUtils"

    const-string v3, "In onCreate() : mPackageInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    return-object v1
.end method

.method public static processPhoto([B)[B
    .locals 8
    .param p0, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 240
    const-string v0, ""

    .line 242
    .local v0, "photoPath":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 243
    nop

    .line 247
    const-string v2, "NfUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processPhoto(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nforetek/util/normal/NfLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 251
    .local v3, "size":I
    new-array v4, v3, [B

    .line 252
    .local v4, "bytes":[B
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check file.length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    .local v5, "buf":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 256
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    .end local v5    # "buf":Ljava/io/BufferedInputStream;
    nop

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 265
    const-string v1, "NfUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Piggy Check bytes.length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 267
    .local v1, "photoString":Ljava/lang/String;
    const-string v5, "NfUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Piggy Check photoString : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nforetek/util/normal/NfLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v4}, Lcom/nforetek/util/normal/NfUtils;->decodePhoto([B)[B

    move-result-object v5

    return-object v5

    .line 260
    .end local v1    # "photoString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 261
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    return-object v1

    .line 257
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 259
    return-object v1

    .line 243
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "size":I
    .end local v4    # "bytes":[B
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 245
    return-object v1
.end method
