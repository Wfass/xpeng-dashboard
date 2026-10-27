.class public Lcom/xiaopeng/xuiservice/cv/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "base64Data"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 59
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static ByteToBitmap([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "previewSize"    # Landroid/hardware/Camera$Size;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 24
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v4, 0x14

    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    iget v6, p1, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object v2, v8

    .line 31
    .local v2, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v3

    .line 33
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    iget v5, p1, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 40
    .local v3, "jdata":[B
    array-length v4, v3

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 45
    .end local v2    # "yuvimage":Landroid/graphics/YuvImage;
    .end local v3    # "jdata":[B
    nop

    .line 46
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 41
    :catch_1
    move-exception v2

    .line 42
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 46
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 54
    :goto_1
    return-object v0

    .line 44
    :goto_2
    nop

    .line 45
    if-eqz v1, :cond_1

    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 49
    :catch_2
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 51
    :cond_1
    :goto_3
    throw v2
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .line 82
    add-int v0, p1, p3

    add-int/2addr v0, p4

    add-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    sub-int v0, p3, p1

    .line 86
    .local v0, "cropWidth":I
    sub-int v8, p4, p2

    .line 87
    .local v8, "cropHeight":I
    move v2, p1

    .line 88
    .local v2, "crop_x":I
    move v3, p2

    .line 90
    .local v3, "crop_y":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "ivbWidth"    # I
    .param p2, "ivbHeight"    # I

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "resizeBmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 66
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v9, v2

    .line 68
    .local v9, "height":I
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v2

    .line 70
    .local v10, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    int-to-float v3, v1

    div-float v11, v2, v3

    .line 71
    .local v11, "scaleWidth":F
    int-to-float v2, p2

    int-to-float v3, v9

    div-float v12, v2, v3

    .line 73
    .local v12, "scaleHeight":F
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 74
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v5, v1

    move v6, v9

    move-object v7, v10

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 77
    .end local v1    # "width":I
    .end local v9    # "height":I
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "scaleWidth":F
    .end local v12    # "scaleHeight":F
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static saveImage2Gallery(Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "isSuccess":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Avm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "storePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "appDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .local v5, "fos":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x3c

    invoke-virtual {p0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    move v0, v6

    .line 106
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 107
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 109
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method
