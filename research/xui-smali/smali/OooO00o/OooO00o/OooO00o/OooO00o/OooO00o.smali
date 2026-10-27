.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static OooO00o([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOOO;->OooO00o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    :cond_1
    const-string v0, "UTF-8"

    .line 3
    :cond_2
    :try_start_1
    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    move-object p0, v1

    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
