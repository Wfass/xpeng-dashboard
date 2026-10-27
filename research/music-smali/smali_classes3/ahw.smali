.class public Lahw;
.super Ljava/lang/Object;
.source "CarAppsIOUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x1000

    .line 31
    new-array v0, v0, [B

    :goto_0
    const/4 v1, -0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method
