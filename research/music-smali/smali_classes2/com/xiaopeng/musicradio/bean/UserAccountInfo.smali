.class public Lcom/xiaopeng/musicradio/bean/UserAccountInfo;
.super Ljava/lang/Object;
.source "UserAccountInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buyVipUrl:Ljava/lang/String;

.field public headImgUrl:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

.field public vipSwitchFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuyVipUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->buyVipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    return-object v0
.end method

.method public getVipSwitchFlag()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->vipSwitchFlag:I

    return v0
.end method

.method public isSVip(I)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->isSVip(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVip()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->isVip()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBuyVipUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->buyVipUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->openId:Ljava/lang/String;

    return-void
.end method

.method public setVipInfo(Lcom/xiaopeng/musicradio/bean/UserVipInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAccountInfo{nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buyVipUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->buyVipUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", vipInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
