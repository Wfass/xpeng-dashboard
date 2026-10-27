.class public interface abstract Lbsh;
.super Ljava/lang/Object;
.source "IQqVipService.java"


# virtual methods
.method public abstract fetchUserInfo()V
.end method

.method public abstract getNickName()Ljava/lang/String;
.end method

.method public abstract getUserLogo()Ljava/lang/String;
.end method

.method public abstract getVipDetial()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVipEndTime()Ljava/lang/String;
.end method

.method public abstract isGreenVip()Z
.end method

.method public abstract isVip()Z
.end method

.method public abstract loadUserInfo()V
.end method
