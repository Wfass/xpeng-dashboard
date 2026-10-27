.class public Lcom/acrcloud/rec/utils/ACRCloudUtils;
.super Ljava/lang/Object;
.source "ACRCloudUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateVolume([BI)D
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "len"    # I

    .line 15
    const/4 v0, 0x3

    .line 16
    .local v0, "step":I
    shr-int v1, p1, v0

    .line 17
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "fDB":F
    const/4 v3, 0x0

    .line 18
    .local v3, "mu":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 19
    shl-int v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    .line 20
    .local v5, "retVal":S
    shl-int v6, v4, v0

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v5

    int-to-short v5, v6

    .line 21
    shr-int/lit8 v6, v5, 0xf

    xor-int/2addr v6, v5

    shr-int/lit8 v7, v5, 0xf

    sub-int/2addr v6, v7

    .line 22
    .local v6, "temp":I
    mul-int v7, v6, v6

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 23
    int-to-float v7, v6

    add-float/2addr v3, v7

    .line 18
    .end local v5    # "retVal":S
    .end local v6    # "temp":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    .end local v4    # "i":I
    :cond_0
    int-to-float v4, v1

    div-float/2addr v2, v4

    .line 26
    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 27
    mul-float v4, v3, v3

    sub-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    .line 28
    .local v4, "db":D
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 29
    div-double v6, v4, v6

    return-wide v6
.end method

.method public static createFileWithByte([BLjava/lang/String;)V
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "fileName"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 116
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 119
    .local v2, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 125
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 127
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 129
    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 137
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 144
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :goto_1
    goto :goto_3

    .line 145
    :catch_1
    move-exception v3

    .line 146
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e2":Ljava/lang/Exception;
    goto :goto_1

    .line 135
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 132
    :catch_2
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 137
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    goto :goto_2

    .line 138
    :catch_3
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 144
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 150
    :cond_2
    :goto_3
    return-void

    .line 135
    :goto_4
    if-eqz v1, :cond_3

    .line 137
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 140
    goto :goto_5

    .line 138
    :catch_4
    move-exception v4

    .line 139
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 144
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 147
    goto :goto_6

    .line 145
    :catch_5
    move-exception v4

    .line 146
    .local v4, "e2":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .end local v4    # "e2":Ljava/lang/Exception;
    :cond_4
    :goto_6
    throw v3
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    if-eqz p0, :cond_0

    .line 34
    const-string v0, "connectivity"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 37
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    return v2

    .line 41
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static pcm2Wav([BII)[B
    .locals 11
    .param p0, "pcmBuffer"    # [B
    .param p1, "sampleRate"    # I
    .param p2, "nchannels"    # I

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    array-length v0, p0

    .line 49
    .local v0, "pcmBufferLen":I
    add-int/lit8 v1, v0, 0x24

    .line 50
    .local v1, "totalAudiolen":I
    const/16 v2, 0x10

    mul-int v3, v2, p1

    mul-int/2addr v3, p2

    const/16 v4, 0x8

    div-int/2addr v3, v4

    .line 51
    .local v3, "byteRate":I
    const/16 v5, 0x2c

    new-array v5, v5, [B

    .line 52
    .local v5, "header":[B
    const/16 v6, 0x52

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 53
    const/16 v6, 0x49

    const/4 v8, 0x1

    aput-byte v6, v5, v8

    .line 54
    const/4 v6, 0x2

    const/16 v9, 0x46

    aput-byte v9, v5, v6

    .line 55
    const/4 v6, 0x3

    aput-byte v9, v5, v6

    .line 56
    const/4 v6, 0x4

    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v6

    .line 57
    const/4 v6, 0x5

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v6

    .line 58
    const/4 v6, 0x6

    shr-int/lit8 v9, v1, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v6

    .line 59
    const/4 v6, 0x7

    shr-int/lit8 v9, v1, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v6

    .line 60
    const/16 v6, 0x57

    aput-byte v6, v5, v4

    .line 61
    const/16 v6, 0x9

    const/16 v9, 0x41

    aput-byte v9, v5, v6

    .line 62
    const/16 v6, 0xa

    const/16 v9, 0x56

    aput-byte v9, v5, v6

    .line 63
    const/16 v6, 0xb

    const/16 v9, 0x45

    aput-byte v9, v5, v6

    .line 65
    const/16 v6, 0xc

    const/16 v9, 0x66

    aput-byte v9, v5, v6

    .line 66
    const/16 v6, 0xd

    const/16 v9, 0x6d

    aput-byte v9, v5, v6

    .line 67
    const/16 v6, 0xe

    const/16 v9, 0x74

    aput-byte v9, v5, v6

    .line 68
    const/16 v6, 0xf

    const/16 v10, 0x20

    aput-byte v10, v5, v6

    .line 70
    aput-byte v2, v5, v2

    .line 71
    const/16 v6, 0x11

    aput-byte v7, v5, v6

    .line 72
    const/16 v6, 0x12

    aput-byte v7, v5, v6

    .line 73
    const/16 v6, 0x13

    aput-byte v7, v5, v6

    .line 75
    const/16 v6, 0x14

    aput-byte v8, v5, v6

    .line 76
    const/16 v6, 0x15

    aput-byte v7, v5, v6

    .line 78
    const/16 v6, 0x16

    int-to-byte v8, p2

    aput-byte v8, v5, v6

    .line 79
    const/16 v6, 0x17

    aput-byte v7, v5, v6

    .line 81
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    const/16 v8, 0x18

    aput-byte v6, v5, v8

    .line 82
    const/16 v6, 0x19

    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 83
    const/16 v6, 0x1a

    shr-int/lit8 v8, p1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 84
    const/16 v6, 0x1b

    shr-int/lit8 v8, p1, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 86
    const/16 v6, 0x1c

    and-int/lit16 v8, v3, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 87
    const/16 v6, 0x1d

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 88
    const/16 v6, 0x1e

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 89
    const/16 v6, 0x1f

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 91
    mul-int/lit8 v6, p2, 0x10

    div-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v5, v10

    .line 92
    const/16 v4, 0x21

    aput-byte v7, v5, v4

    .line 94
    const/16 v4, 0x22

    aput-byte v2, v5, v4

    .line 95
    const/16 v2, 0x23

    aput-byte v7, v5, v2

    .line 97
    const/16 v2, 0x64

    const/16 v4, 0x24

    aput-byte v2, v5, v4

    .line 98
    const/16 v2, 0x25

    const/16 v4, 0x61

    aput-byte v4, v5, v2

    .line 99
    const/16 v2, 0x26

    aput-byte v9, v5, v2

    .line 100
    const/16 v2, 0x27

    aput-byte v4, v5, v2

    .line 101
    const/16 v2, 0x28

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    .line 102
    const/16 v2, 0x29

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    .line 103
    const/16 v2, 0x2a

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    .line 104
    const/16 v2, 0x2b

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    .line 105
    array-length v2, v5

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 106
    .local v2, "wavBuffer":[B
    array-length v4, v5

    invoke-static {v5, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v4, v5

    array-length v6, p0

    invoke-static {p0, v7, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v2
.end method
