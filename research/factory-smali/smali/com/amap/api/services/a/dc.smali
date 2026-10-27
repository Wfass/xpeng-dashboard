.class public Lcom/amap/api/services/a/dc;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    nop

    .line 159
    nop

    .line 161
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x32000

    const/4 v5, 0x1

    invoke-static {v2, v5, v5, v3, v4}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/co;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 165
    array-length v1, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, p0, v4

    .line 166
    const-string v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 167
    goto :goto_2

    .line 169
    :cond_0
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 170
    aget-object v6, v6, v3

    .line 171
    invoke-static {v2, v6}, Lcom/amap/api/services/a/de;->a(Lcom/amap/api/services/a/co;Ljava/lang/String;)[B

    move-result-object v6

    .line 173
    invoke-static {v6}, Lcom/amap/api/services/a/be;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 175
    if-eqz v5, :cond_1

    .line 176
    nop

    .line 180
    move v5, v3

    goto :goto_1

    .line 178
    :cond_1
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :goto_1
    const-string v7, "{\"log\":\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    nop

    .line 201
    if-eqz v2, :cond_3

    .line 194
    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/services/a/co;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    goto :goto_5

    .line 195
    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 192
    :catchall_0
    move-exception p0

    goto :goto_6

    .line 188
    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_3

    .line 186
    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    .line 192
    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_6

    .line 188
    :catch_3
    move-exception p0

    .line 189
    :goto_3
    :try_start_3
    const-string v2, "StatisticsManager"

    const-string v3, "getContent"

    invoke-static {p0, v2, v3}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    nop

    .line 197
    if-eqz v1, :cond_3

    .line 194
    :try_start_4
    invoke-virtual {v1}, Lcom/amap/api/services/a/co;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 197
    goto :goto_5

    .line 195
    :catch_4
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 186
    :catch_5
    move-exception p0

    .line 187
    :goto_4
    :try_start_5
    const-string v2, "StatisticsManager"

    const-string v3, "getContent"

    invoke-static {p0, v2, v3}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 188
    nop

    .line 197
    if-eqz v1, :cond_3

    .line 194
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/services/a/co;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 197
    goto :goto_5

    .line 195
    :catch_6
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    :cond_3
    :goto_5
    nop

    .line 199
    nop

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :goto_6
    nop

    .line 197
    if-eqz v2, :cond_4

    .line 194
    :try_start_7
    invoke-virtual {v2}, Lcom/amap/api/services/a/co;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 197
    goto :goto_7

    .line 195
    :catch_7
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    :cond_4
    :goto_7
    nop

    .line 192
    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/dc;->a(Landroid/content/Context;J)V

    .line 97
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    return-void

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/be;->c([B)[B

    move-result-object p0

    .line 108
    new-instance v0, Lcom/amap/api/services/a/bi;

    const-string v1, "6"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/bi;-><init>([BLjava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amap/api/services/a/cs;->a()Lcom/amap/api/services/a/cs;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/cs;->b(Lcom/amap/api/services/a/cy;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    const-string v0, "OfflineLocManager"

    const-string v1, "updateOfflineLocData"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 2

    .line 124
    nop

    .line 126
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "f.log"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    nop

    .line 150
    nop

    .line 141
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    goto :goto_1

    .line 142
    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 139
    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    .line 134
    :catch_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_0

    .line 139
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 134
    :catch_2
    move-exception p0

    .line 136
    :goto_0
    :try_start_3
    const-string p1, "OfflineLocManager"

    const-string p2, "updateLogUpdateTime"

    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    nop

    .line 145
    if-eqz v0, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 145
    goto :goto_1

    .line 142
    :catch_3
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :cond_1
    :goto_1
    nop

    .line 147
    nop

    .line 150
    return-void

    .line 139
    :goto_2
    nop

    .line 145
    if-eqz v0, :cond_2

    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 145
    goto :goto_3

    .line 142
    :catch_4
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :cond_2
    :goto_3
    nop

    .line 139
    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 207
    sget-object v0, Lcom/amap/api/services/a/bh;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const-string v2, "{\"pinfo\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"els\":["

    .line 214
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string p0, "]}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 3

    .line 224
    nop

    .line 226
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/bh;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 228
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 230
    return v0

    .line 232
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception p0

    .line 234
    const-string v1, "OfflineLocManager"

    const-string v2, "getFileNum"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move p0, v0

    :goto_0
    return p0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 5

    .line 247
    const-string v0, "f.log"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 250
    const-wide/16 v0, 0x0

    return-wide v0

    .line 252
    :cond_0
    const/4 p0, 0x0

    .line 254
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 256
    new-array p0, p0, [B

    .line 257
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 258
    invoke-static {p0}, Lcom/amap/api/services/a/be;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    nop

    .line 283
    nop

    .line 275
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    goto :goto_0

    .line 276
    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    :goto_0
    nop

    .line 260
    return-wide v2

    .line 262
    :catch_1
    move-exception p0

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_5

    .line 262
    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    .line 264
    :goto_1
    :try_start_3
    const-string v2, "OfflineLocManager"

    const-string v3, "getUpdateTime"

    invoke-static {p0, v2, v3}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 269
    :catch_3
    move-exception p0

    .line 270
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 271
    :cond_1
    :goto_2
    nop

    .line 272
    :goto_3
    nop

    .line 280
    if-eqz v1, :cond_2

    .line 275
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 280
    goto :goto_4

    .line 276
    :catch_4
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    :cond_2
    :goto_4
    nop

    .line 282
    nop

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 273
    :catchall_1
    move-exception p0

    .line 280
    :goto_5
    if-eqz v1, :cond_3

    .line 275
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 280
    goto :goto_6

    .line 276
    :catch_5
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    :cond_3
    :goto_6
    nop

    .line 273
    throw p0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 7

    .line 289
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/az;->m(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 292
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->d(Landroid/content/Context;)J

    move-result-wide v3

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 295
    sub-long/2addr v5, v3

    const-wide/32 v3, 0x240c8400

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->c(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x64

    if-ge p0, v1, :cond_1

    .line 300
    return v0

    .line 302
    :cond_1
    return v2

    .line 306
    :cond_2
    goto :goto_0

    .line 304
    :catch_0
    move-exception p0

    .line 305
    const-string v1, "StatisticsManager"

    const-string v2, "isUpdate"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 312
    invoke-static {p0}, Lcom/amap/api/services/a/dc;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/ay;->b(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0

    .line 316
    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    :try_start_0
    const-string v1, "\"key\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"platform\":\"android\",\"diu\":\""

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/az;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"mac\":\""

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/az;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"tid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/az;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"manufacture\":\""

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"device\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sim\":\""

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/az;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pkg\":\""

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"model\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"appversion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/av;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 332
    :catch_0
    move-exception p0

    .line 334
    const-string v1, "CInfo"

    const-string v2, "getPublicJSONInfo"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
