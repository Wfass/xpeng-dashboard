.class public Lazj;
.super Ljava/lang/Object;
.source "KugouAddCollectCallback.java"

# interfaces
.implements Lbdl$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReissueOk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouAddCollectCallback"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 15
    instance-of p1, p2, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    if-eqz p1, :cond_0

    .line 16
    check-cast p2, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    .line 17
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;->getDissExtraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lbas;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
