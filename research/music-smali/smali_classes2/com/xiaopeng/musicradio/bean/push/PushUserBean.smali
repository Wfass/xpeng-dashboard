.class public Lcom/xiaopeng/musicradio/bean/push/PushUserBean;
.super Ljava/lang/Object;
.source "PushUserBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

.field public scene:I

.field public test:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->getExpireTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->getOpenId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScene()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->scene:I

    return v0
.end method

.method public isTest()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->test:Z

    return v0
.end method

.method public setExpireTime(J)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->setExpireTime(J)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->data:Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->setOpenId(Ljava/lang/String;)V

    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->scene:I

    return-void
.end method

.method public setTest(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->test:Z

    return-void
.end method
