.class public Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBase64Md5(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/io/FileDescriptor;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateBase64Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateBase64Md5([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .line 115
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateMd5(Ljava/io/FileDescriptor;)[B
    .locals 6
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    .local v0, "digest":Ljava/security/MessageDigest;
    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 41
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 43
    .local v2, "is":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 47
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "buffer":[B
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    move-object v0, v3

    .line 50
    .local v0, "md5":[B
    nop

    .line 49
    nop

    .line 51
    return-object v0

    .line 48
    .end local v0    # "md5":[B
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MD5 algorithm not found."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static calculateMd5(Ljava/lang/String;)[B
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    .local v0, "digest":Ljava/security/MessageDigest;
    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 77
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v2, "is":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "buffer":[B
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    move-object v0, v3

    .line 86
    .local v0, "md5":[B
    nop

    .line 85
    nop

    .line 87
    return-object v0

    .line 84
    .end local v0    # "md5":[B
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MD5 algorithm not found."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static calculateMd5([B)[B
    .locals 4
    .param p0, "binaryData"    # [B

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 63
    nop

    .line 64
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MD5 algorithm not found."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static calculateMd5Str(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/io/FileDescriptor;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateMd5Str([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .line 94
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHashToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "hashBytes"    # [B

    .line 213
    const-string v0, ""

    .line 214
    .local v0, "returnVal":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fileToSHA1(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 7
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .line 180
    const/4 v0, 0x0

    move-object v1, v0

    .line 182
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    .line 183
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 184
    .local v2, "buffer":[B
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 185
    .local v3, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    move v5, v4

    .line 186
    .local v5, "numRead":I
    :cond_0
    :goto_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 187
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    .line 188
    if-lez v5, :cond_0

    .line 189
    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 193
    .local v4, "sha1Bytes":[B
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->convertHashToString([B)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    nop

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 193
    :goto_1
    return-object v6

    .line 197
    .end local v2    # "buffer":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "sha1Bytes":[B
    .end local v5    # "numRead":I
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 199
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    goto :goto_2

    .line 200
    :catch_1
    move-exception v2

    .line 203
    :cond_2
    :goto_2
    throw v0

    .line 194
    :catch_2
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 197
    if-eqz v1, :cond_3

    .line 199
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    goto :goto_3

    .line 200
    :catch_3
    move-exception v3

    .line 195
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static fileToSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    move-object v1, v0

    .line 155
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 156
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 157
    .local v2, "buffer":[B
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 158
    .local v3, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    move v5, v4

    .line 159
    .local v5, "numRead":I
    :cond_0
    :goto_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 160
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    .line 161
    if-lez v5, :cond_0

    .line 162
    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 166
    .local v4, "sha1Bytes":[B
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->convertHashToString([B)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    nop

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 166
    :goto_1
    return-object v6

    .line 170
    .end local v2    # "buffer":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "sha1Bytes":[B
    .end local v5    # "numRead":I
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 172
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    goto :goto_2

    .line 173
    :catch_1
    move-exception v2

    .line 176
    :cond_2
    :goto_2
    throw v0

    .line 167
    :catch_2
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 170
    if-eqz v1, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 174
    goto :goto_3

    .line 173
    :catch_3
    move-exception v3

    .line 168
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static fromBase64String(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMd5StrFromBytes([B)Ljava/lang/String;
    .locals 6
    .param p0, "md5bytes"    # [B

    .line 136
    if-nez p0, :cond_0

    .line 137
    const-string v0, ""

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 141
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toBase64String([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .line 23
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
