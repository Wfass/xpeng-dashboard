.class public Lcom/alibaba/sdk/android/man/crashreporter/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/Reader;)V
    .locals 0

    .line 35
    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 41
    :cond_0
    :goto_0
    return-void
.end method
