.class public Lazc;
.super Ljava/lang/Object;
.source "ReissueInfoFactory.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 12
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netradio_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/addFm"

    .line 16
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 19
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 24
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netradio_un_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    const-string p0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/cancelFm"

    .line 28
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 31
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method
