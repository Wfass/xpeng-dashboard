.class Lbmt$17;
.super Lbkv;
.source "ProgramModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->onReadingBinded(Lasj$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lbmt$17;->a:Lbmt;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 449
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;

    invoke-virtual {p0, p1}, Lbmt$17;->a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;)V
    .locals 5

    .line 452
    iget-object v0, p0, Lbmt$17;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 455
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->isTrackAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 456
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    .line 457
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->getPaymentType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setPaymentType(I)V

    .line 458
    new-instance v0, Lasj$aa;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->getTrackId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayTrackInfoBean$DataBean;->getPaymentType()I

    move-result p1

    invoke-direct {v0, v2, v3, p1, v1}, Lasj$aa;-><init>(JIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
