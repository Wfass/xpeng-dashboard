.class public Lcom/xiaopeng/xuiservice/download/util/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNameFromUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 15
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 11
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
