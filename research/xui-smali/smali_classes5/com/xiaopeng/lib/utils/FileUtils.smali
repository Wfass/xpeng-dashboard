.class public Lcom/xiaopeng/lib/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/FileUtils$OnUpdateFileCopyFromUsbListener;
    }
.end annotation


# static fields
.field private static final FILE_DIR_NAME:Ljava/lang/String; = "files"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.xmart"

.field public static final SIZETYPE_B:I = 0x1

.field public static final SIZETYPE_GB:I = 0x4

.field public static final SIZETYPE_KB:I = 0x2

.field public static final SIZETYPE_MB:I = 0x3

.field public static final SIZE_1GB:J = 0x40000000L

.field public static final SIZE_1KB:J = 0x400L

.field public static final SIZE_1MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field private static final XMART_USB_PATH:Ljava/lang/String; = "/mnt/usbhost"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FormatFileSize(JI)D
    .locals 7
    .param p0, "fileS"    # J
    .param p2, "sizeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileS",
            "sizeType"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v1, 0x0

    .line 160
    .local v1, "fileSizeLong":D
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    .line 175
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 176
    goto :goto_0

    .line 170
    :pswitch_1
    long-to-double v3, p0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    .line 171
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 172
    goto :goto_0

    .line 166
    :pswitch_2
    long-to-double v3, p0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    .line 167
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 168
    goto :goto_0

    .line 162
    :pswitch_3
    long-to-double v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    .line 163
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 164
    nop

    .line 180
    :goto_0
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static FormatFileSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 134
    .local v1, "fileSizeString":Ljava/lang/String;
    const-string v2, "0B"

    .line 135
    .local v2, "wrongSize":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 136
    return-object v2

    .line 138
    :cond_0
    const-wide/16 v3, 0x400

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_1
    const-wide/32 v3, 0x100000

    cmp-long v3, p0, v3

    if-gez v3, :cond_2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_2
    const-wide/32 v3, 0x40000000

    cmp-long v3, p0, v3

    if-gez v3, :cond_3

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeable"
        }
    .end annotation

    .line 577
    if-eqz p0, :cond_0

    .line 578
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 582
    :cond_0
    :goto_0
    nop

    .line 583
    :goto_1
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/utils/FileUtils$OnUpdateFileCopyFromUsbListener;)V
    .locals 7
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/lib/utils/FileUtils$OnUpdateFileCopyFromUsbListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldPath",
            "newPath",
            "listener"
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "inStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 379
    .local v1, "fs":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 382
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 383
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 384
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "byteRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 385
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 388
    if-eqz p2, :cond_1

    .line 389
    invoke-interface {p2}, Lcom/xiaopeng/lib/utils/FileUtils$OnUpdateFileCopyFromUsbListener;->onCopySuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v2    # "oldFile":Ljava/io/File;
    .end local v3    # "buffer":[B
    .end local v5    # "byteRead":I
    :cond_1
    if-eqz v1, :cond_2

    .line 398
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 400
    :catch_0
    move-exception v2

    .line 401
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 402
    :cond_2
    :goto_1
    nop

    .line 405
    :goto_2
    if-eqz v0, :cond_3

    .line 406
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 409
    :catch_1
    move-exception v2

    .line 410
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 411
    :cond_3
    :goto_3
    goto :goto_6

    .line 396
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 392
    :catch_2
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    invoke-interface {p2}, Lcom/xiaopeng/lib/utils/FileUtils$OnUpdateFileCopyFromUsbListener;->onCopyFail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    .line 398
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 400
    :catch_3
    move-exception v2

    .line 401
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 402
    :cond_4
    :goto_4
    nop

    .line 405
    :goto_5
    if-eqz v0, :cond_3

    .line 406
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 413
    :goto_6
    return-void

    .line 396
    :goto_7
    nop

    .line 397
    if-eqz v1, :cond_5

    .line 398
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 400
    :catch_4
    move-exception v3

    .line 401
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 402
    :cond_5
    :goto_8
    nop

    .line 405
    :goto_9
    if-eqz v0, :cond_6

    .line 406
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 409
    :catch_5
    move-exception v3

    .line 410
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 411
    :cond_6
    :goto_a
    nop

    .line 412
    :goto_b
    throw v2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPath",
            "newPath"
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "inStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 418
    .local v1, "fs":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    move v3, v2

    .line 421
    .local v3, "flag":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v4, "oldFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 424
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 425
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 426
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "byteRead":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 427
    invoke-virtual {v1, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    const/4 v2, 0x1

    .line 435
    .end local v3    # "flag":Z
    .end local v4    # "oldFile":Ljava/io/File;
    .end local v5    # "buffer":[B
    .end local v7    # "byteRead":I
    .local v2, "flag":Z
    move v3, v2

    .end local v2    # "flag":Z
    .restart local v3    # "flag":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 437
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    goto :goto_1

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 445
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 448
    :catch_1
    move-exception v2

    .line 449
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 450
    :cond_3
    :goto_2
    goto :goto_4

    .line 435
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 432
    :catch_2
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    .line 437
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 440
    goto :goto_3

    .line 438
    :catch_3
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v0, :cond_3

    .line 445
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 452
    :goto_4
    return v3

    .line 435
    :goto_5
    if-eqz v1, :cond_5

    .line 437
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 440
    goto :goto_6

    .line 438
    :catch_4
    move-exception v4

    .line 439
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 445
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 448
    :catch_5
    move-exception v4

    .line 449
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 450
    :cond_6
    :goto_7
    nop

    .line 451
    :goto_8
    throw v2
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 531
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 536
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 537
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 538
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 539
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 540
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 538
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 549
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    :goto_1
    return-void
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 557
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    const-wide/16 v1, 0x0

    .line 561
    .local v1, "size":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 562
    .local v5, "f":Ljava/io/File;
    invoke-static {v5}, Lcom/xiaopeng/lib/utils/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 561
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 564
    :cond_1
    return-wide v1

    .line 558
    .end local v1    # "size":J
    :cond_2
    :goto_1
    return-wide v1

    .line 566
    .end local v0    # "children":[Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    .line 567
    .local v0, "size":J
    return-wide v0

    .line 570
    .end local v0    # "size":J
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u6587\u4ef6\u6216\u8005\u6587\u4ef6\u5939\u4e0d\u5b58\u5728\uff0c\u8bf7\u68c0\u67e5\u8def\u5f84\u662f\u5426\u6b63\u786e\uff01"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    return-wide v1
.end method

.method public static getFileBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_2
    return-object p0
.end method

.method public static getFileSize(Ljava/lang/String;I)D
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "sizeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "sizeType"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 53
    .local v1, "blockSize":J
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 61
    :goto_0
    goto :goto_1

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileSize error! e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1, v2, p1}, Lcom/xiaopeng/lib/utils/FileUtils;->FormatFileSize(JI)D

    move-result-wide v3

    return-wide v3
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 97
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public static getFileSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 75
    .local v1, "blockSize":J
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 83
    :goto_0
    goto :goto_1

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const-string v4, "FileUtils"

    const-string v5, "getFileSize error!"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/FileUtils;->FormatFileSize(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 111
    .local v2, "flist":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 112
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 113
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 116
    :cond_0
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/xiaopeng/lib/utils/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 112
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_1
    const-string v3, "FileUtils"

    const-string v4, "File not exist"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    :cond_2
    return-wide v0
.end method

.method public static getFileStorePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subDir"
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->getSaveFilePath()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "storePath":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0
.end method

.method public static getRootFilePath()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveFilePath()Ljava/lang/String;
    .locals 2

    .line 236
    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->getRootFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.xiaopeng.xmart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->getRootFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.xiaopeng.xmart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbMountDir()[Ljava/lang/String;
    .locals 4

    .line 343
    const-string v0, "sys.usb.label"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "dirs":Ljava/lang/String;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbMountDir-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 349
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 353
    :cond_1
    const-string v1, "/mnt/usbhost"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hasSDCard()Z
    .locals 2

    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const/4 v1, 0x0

    return v1

    .line 212
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isUsbAvailable()Z
    .locals 8

    .line 357
    invoke-static {}, Lcom/xiaopeng/lib/utils/FileUtils;->getUsbMountDir()[Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "usbMountDirs":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 359
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 360
    .local v4, "usbMountDir":Ljava/lang/String;
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subMountDir-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, "usbDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 363
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 364
    .local v6, "usbFiles":[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 365
    const/4 v1, 0x1

    return v1

    .line 359
    .end local v4    # "usbMountDir":Ljava/lang/String;
    .end local v5    # "usbDir":Ljava/io/File;
    .end local v6    # "usbFiles":[Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return v1
.end method

.method public static makeDirectory(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 489
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static makeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileName"
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "fileDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 461
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_0
    goto :goto_0

    .line 465
    :catch_0
    move-exception v2

    .line 469
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 470
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    :cond_1
    goto :goto_1

    .line 473
    :catch_1
    move-exception v2

    .line 474
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public static saveImageToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "subDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bmp",
            "subDir"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    move-object v4, v3

    .line 299
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 300
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 301
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    nop

    .line 309
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :goto_0
    goto :goto_1

    .line 310
    :catch_0
    move-exception v5

    .line 311
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 307
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 304
    :catch_1
    move-exception v5

    .line 305
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1

    .line 309
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 302
    :catch_2
    move-exception v5

    .line 303
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_1

    .line 309
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 318
    :cond_1
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 321
    goto :goto_2

    .line 319
    :catch_3
    move-exception v3

    .line 320
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 323
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void

    .line 307
    :goto_3
    if-eqz v4, :cond_2

    .line 309
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 312
    goto :goto_4

    .line 310
    :catch_4
    move-exception v5

    .line 311
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 314
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v3
.end method

.method public static storePicture(Landroid/graphics/Bitmap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "storePath"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "storePath",
            "quality"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v1, "imageFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 255
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 257
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 259
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 260
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 261
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v2, :cond_1

    .line 270
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v4

    goto :goto_1

    .line 272
    :cond_1
    :goto_0
    nop

    .line 273
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 275
    :goto_1
    nop

    .line 276
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 277
    :cond_2
    :goto_2
    goto :goto_3

    .line 268
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 265
    :catch_1
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 270
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 272
    :cond_3
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 263
    :catch_2
    move-exception v4

    .line 264
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_4

    .line 270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 272
    :cond_4
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 279
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 268
    :goto_4
    nop

    .line 269
    if-eqz v2, :cond_5

    .line 270
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 275
    :catch_3
    move-exception v5

    goto :goto_6

    .line 272
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 273
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 275
    :goto_6
    nop

    .line 276
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 277
    :cond_6
    :goto_7
    nop

    .line 278
    :goto_8
    throw v4
.end method

.method public static writeTxtToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "filePath",
            "fileName"
        }
    .end annotation

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "raf":Ljava/io/RandomAccessFile;
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/FileUtils;->makeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "strFilePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "strContent":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 509
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 512
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 513
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 514
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .end local v3    # "file":Ljava/io/File;
    nop

    .line 521
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 526
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 525
    :cond_1
    :goto_0
    goto :goto_1

    .line 519
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 515
    :catch_1
    move-exception v3

    .line 516
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FileUtils"

    const-string v5, "writeTxtToFile error!"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 521
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 527
    :goto_1
    return-void

    .line 519
    :goto_2
    nop

    .line 520
    if-eqz v0, :cond_2

    .line 521
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 523
    :catch_2
    move-exception v4

    .line 524
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 525
    :cond_2
    :goto_3
    nop

    .line 526
    :goto_4
    throw v3
.end method
