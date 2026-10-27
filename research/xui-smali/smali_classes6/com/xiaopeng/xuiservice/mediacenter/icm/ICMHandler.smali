.class public abstract Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;
.super Ljava/lang/Object;
.source "ICMHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICMHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapByte(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    nop

    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    goto :goto_1

    .line 40
    :catch_1
    move-exception v2

    .line 41
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    throw v1
.end method

.method public printMediaDataLog(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "withImage"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "imageWidth":I
    const/4 v1, 0x0

    .line 50
    .local v1, "imageHeight":I
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 51
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 52
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&image width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&mediaData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&image width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&mediaData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method

.method public abstract sendIcmMediaInfoData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
.end method

.method public sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p1, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 26
    return-void
.end method

.method public setMusicInfo([B[B)V
    .locals 1
    .param p1, "basic"    # [B
    .param p2, "image"    # [B

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->setMusicInfo([B[B)V

    .line 22
    return-void
.end method
