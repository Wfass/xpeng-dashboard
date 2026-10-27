.class public Landroid/support/rastermill/data/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Landroid/support/rastermill/data/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/rastermill/data/Encoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .line 18
    invoke-static {}, Landroid/support/rastermill/util/ByteArrayPool;->get()Landroid/support/rastermill/util/ByteArrayPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/util/ByteArrayPool;->getBytes()[B

    move-result-object v0

    .line 21
    .local v0, "buffer":[B
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 22
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 31
    invoke-static {}, Landroid/support/rastermill/util/ByteArrayPool;->get()Landroid/support/rastermill/util/ByteArrayPool;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/rastermill/util/ByteArrayPool;->releaseBytes([B)Z

    .line 24
    return v1

    .line 31
    .end local v3    # "read":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "StreamEncoder"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    const-string v3, "StreamEncoder"

    const-string v4, "Failed to encode data onto the OutputStream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_1
    nop

    .line 31
    invoke-static {}, Landroid/support/rastermill/util/ByteArrayPool;->get()Landroid/support/rastermill/util/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/rastermill/util/ByteArrayPool;->releaseBytes([B)Z

    .line 29
    return v1

    .line 31
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {}, Landroid/support/rastermill/util/ByteArrayPool;->get()Landroid/support/rastermill/util/ByteArrayPool;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/rastermill/util/ByteArrayPool;->releaseBytes([B)Z

    .line 32
    throw v1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Landroid/support/rastermill/data/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, ""

    return-object v0
.end method
