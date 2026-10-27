.class public Lazg;
.super Ljava/lang/Object;
.source "ReissueInfoFactory.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 6

    .line 11
    new-instance v0, Lazf;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lazf;-><init>(J)V

    .line 12
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/addAlbum"

    .line 14
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 17
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 6

    .line 22
    new-instance v0, Lazf;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lazf;-><init>(J)V

    .line 23
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/cancelAlbum"

    .line 25
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 28
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method
