.class public Lbmy;
.super Ljava/lang/Object;
.source "ProgramUtil.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method
