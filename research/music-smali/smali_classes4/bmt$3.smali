.class Lbmt$3;
.super Lbkv;
.source "ProgramModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ZI)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lbmt$3;->e:Lbmt;

    iput-object p2, p0, Lbmt$3;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    iput-object p3, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    iput-boolean p4, p0, Lbmt$3;->c:Z

    iput p5, p0, Lbmt$3;->d:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1344
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-virtual {v0}, Lbmt;->pauseByLogic()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x895441

    if-ne p1, v2, :cond_2

    .line 1346
    iget-object v2, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1347
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbue$a;->play_vip_no_login_hint:I

    invoke-virtual {p2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lbmn;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1348
    :cond_0
    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1349
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbue$a;->play_payment_no_login_hint:I

    invoke-virtual {p2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lbmn;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v1, p0, Lbmt$3;->e:Lbmt;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbmt;->b(Ljava/lang/String;)V

    .line 1353
    :goto_0
    iget-object p1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    goto :goto_2

    :cond_2
    const v2, 0x8967ce

    if-ne p1, v2, :cond_3

    .line 1356
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    .line 1357
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOffTime(J)V

    .line 1358
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOffMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    :cond_3
    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    .line 1362
    :goto_1
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbmt;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 1295
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;

    invoke-virtual {p0, p1}, Lbmt$3;->a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;)V
    .locals 7

    .line 1298
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1299
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iget-object v3, p0, Lbmt$3;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1300
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    iget-object v3, p0, Lbmt$3;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1301
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 1302
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    .line 1303
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v0

    const-string v2, "ProgramModel"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlayingInfo albumPaymentType:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", authorize:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", albumAuthorize:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1305
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", updated playinginfo albumAuthorized:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->isAlbumAuthorized()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", track Authorized:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->isTrackAuthorized()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-static {v0}, Lbmt;->k(Lbmt;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lbmt$3;->c:Z

    invoke-virtual {v0, v5, v4, v4, v6}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->prepareData(Ljava/lang/String;ZZZ)V

    .line 1308
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-static {v0}, Lbmt;->k(Lbmt;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    iget v5, p0, Lbmt$3;->d:I

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    .line 1309
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-static {v0}, Lbmt;->l(Lbmt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lbmt$3;->e:Lbmt;

    invoke-static {v0, v1}, Lbmt;->d(Lbmt;Z)Z

    .line 1311
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1313
    iget-object v1, p0, Lbmt$3;->e:Lbmt;

    invoke-virtual {v1, v0}, Lbmt;->a(F)V

    .line 1316
    :cond_0
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->isTrackAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update authorized to true for trackId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    new-instance v0, Lasj$aa;

    iget-object v1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    iget-object v5, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v5

    invoke-direct {v0, v1, v2, v5, v4}, Lasj$aa;-><init>(JIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAlbumAuthorized()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->isAlbumAuthorized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1323
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;->isAlbumAuthorized()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1325
    new-instance p1, Lasj$z;

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lasj$z;-><init>(J)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 1329
    :cond_2
    iget-object p1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 1330
    iget-object p1, p0, Lbmt$3;->e:Lbmt;

    sget v0, Lbue$a;->vip_hint:I

    invoke-virtual {p1, v0, v4}, Lbmt;->a(IZ)V

    goto :goto_0

    .line 1331
    :cond_3
    iget-object p1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 1332
    iget-object p1, p0, Lbmt$3;->e:Lbmt;

    sget v0, Lbue$a;->payment_hint:I

    invoke-virtual {p1, v0, v1}, Lbmt;->a(IZ)V

    .line 1333
    iget-object p1, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    .line 1334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update authorized to false for trackId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    new-instance p1, Lasj$aa;

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v2

    iget-object v0, p0, Lbmt$3;->b:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumPaymentType()I

    move-result v0

    invoke-direct {p1, v2, v3, v0, v1}, Lasj$aa;-><init>(JIZ)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1337
    :cond_4
    :goto_0
    iget-object p1, p0, Lbmt$3;->e:Lbmt;

    invoke-virtual {p1}, Lbmt;->pauseByLogic()V

    :cond_5
    :goto_1
    return-void
.end method
