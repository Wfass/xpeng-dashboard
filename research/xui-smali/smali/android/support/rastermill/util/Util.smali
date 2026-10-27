.class public final Landroid/support/rastermill/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_1_CHARS:[C

.field private static final SHA_256_CHARS:[C

.field private static final STRING_CHARSET_NAME:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/support/rastermill/util/Util;->HEX_CHAR_ARRAY:[C

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Landroid/support/rastermill/util/Util;->SHA_256_CHARS:[C

    .line 32
    const/16 v0, 0x28

    new-array v0, v0, [C

    sput-object v0, Landroid/support/rastermill/util/Util;->SHA_1_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static assertBackgroundThread()V
    .locals 2

    .line 140
    invoke-static {}, Landroid/support/rastermill/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "YOu must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertMainThread()V
    .locals 2

    .line 131
    invoke-static {}, Landroid/support/rastermill/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesToHex([B[C)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "hexChars"    # [C

    .line 60
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 61
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 62
    .local v1, "v":I
    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Landroid/support/rastermill/util/Util;->HEX_CHAR_ARRAY:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 63
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/support/rastermill/util/Util;->HEX_CHAR_ARRAY:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "j":I
    .end local v1    # "v":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 102
    mul-int v0, p0, p1

    invoke-static {p2}, Landroid/support/rastermill/util/Util;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getBitmapByteSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 107
    if-nez p0, :cond_0

    .line 108
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 112
    :cond_0
    sget-object v0, Landroid/support/rastermill/util/Util$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x4

    goto :goto_0

    .line 118
    :pswitch_0
    const/4 v0, 0x2

    .line 119
    .local v0, "bytesPerPixel":I
    goto :goto_0

    .line 114
    .end local v0    # "bytesPerPixel":I
    :pswitch_1
    const/4 v0, 0x1

    .line 115
    .restart local v0    # "bytesPerPixel":I
    nop

    .line 122
    :goto_0
    nop

    .line 124
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSha265Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 184
    return-object v0

    .line 186
    :cond_0
    nop

    .line 188
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 189
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 190
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Landroid/support/rastermill/util/Util;->sha256BytesToHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 195
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    .line 191
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 196
    :goto_1
    return-object v0
.end method

.method public static getSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {p0}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static getSnapshot(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 175
    .local p0, "other":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 179
    :cond_0
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 203
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const/4 v2, 0x1

    return v2

    .line 207
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isOnBackgroundThread()Z
    .locals 1

    .line 156
    invoke-static {}, Landroid/support/rastermill/util/Util;->isOnMainThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sha1BytesToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 51
    sget-object v0, Landroid/support/rastermill/util/Util;->SHA_1_CHARS:[C

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Landroid/support/rastermill/util/Util;->SHA_1_CHARS:[C

    invoke-static {p0, v1}, Landroid/support/rastermill/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sha256BytesToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 42
    sget-object v0, Landroid/support/rastermill/util/Util;->SHA_256_CHARS:[C

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/support/rastermill/util/Util;->SHA_256_CHARS:[C

    invoke-static {p0, v1}, Landroid/support/rastermill/util/Util;->bytesToHex([B[C)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
