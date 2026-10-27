.class public Lcom/xiaopeng/musicradio/utils/p;
.super Ljava/lang/Object;
.source "DataCleanUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/p;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
