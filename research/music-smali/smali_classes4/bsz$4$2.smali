.class Lbsz$4$2;
.super Lbkv;
.source "UserVipModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/UserAccountBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

.field final synthetic b:Lbsz$4;


# direct methods
.method constructor <init>(Lbsz$4;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lbsz$4$2;->b:Lbsz$4;

    iput-object p2, p0, Lbsz$4$2;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 327
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    invoke-virtual {v0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sycAccountInfoWithServer err code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    iget-object v1, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v1, v1, Lbsz$4;->d:Lbsz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laxy;->a(Laxy$a;Z)V

    .line 329
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    invoke-static {v0}, Lbsz;->e(Lbsz;)V

    .line 330
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->b:Lbsz$b;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->b:Lbsz$b;

    invoke-interface {v0, p1, p2}, Lbsz$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/UserAccountBean;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 297
    iget-object v0, p1, Lcom/xiaopeng/musicradio/bean/UserAccountBean;->data:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_2

    .line 298
    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/UserAccountBean;->data:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 299
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipDetailDto()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipDetailDto()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->getVipDetailDto()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->setVipDetailDto(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 310
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->setOpenId(Ljava/lang/String;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    invoke-virtual {v0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saiws2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbsz$4$2;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    invoke-static {v0, p1}, Lbsz;->a(Lbsz;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 314
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    iget-object v1, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v1, v1, Lbsz$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsz;->b(Lbsz;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;

    iget-object v1, p0, Lbsz$4$2;->b:Lbsz$4;

    iget v1, v1, Lbsz$4;->c:I

    iget-object v2, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v2, v2, Lbsz$4;->d:Lbsz;

    invoke-virtual {v2}, Lbsz;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    iget-object v1, p0, Lbsz$4$2;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-static {v0, v1, p1}, Lbsz;->a(Lbsz;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    .line 317
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->d:Lbsz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbsz;->a(Lbsz;J)J

    .line 319
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->b:Lbsz$b;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lbsz$4$2;->b:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->b:Lbsz$b;

    invoke-interface {v0, p1}, Lbsz$b;->a(Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 294
    check-cast p1, Lcom/xiaopeng/musicradio/bean/UserAccountBean;

    invoke-virtual {p0, p1}, Lbsz$4$2;->a(Lcom/xiaopeng/musicradio/bean/UserAccountBean;)V

    return-void
.end method
