.class public Lbrg;
.super Ljava/lang/Object;
.source "AudioParseUtil.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
