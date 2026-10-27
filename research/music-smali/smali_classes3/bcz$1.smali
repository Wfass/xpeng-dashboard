.class Lbcz$1;
.super Ljava/lang/Object;
.source "NetRadioModel.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

.field final synthetic b:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lbcz$1;->b:Lbcz;

    iput-object p2, p0, Lbcz$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const v0, 0x8967ce

    if-ne p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lbcz$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    .line 105
    iget-object v0, p0, Lbcz$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOffTime(J)V

    .line 106
    iget-object v0, p0, Lbcz$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOffMsg(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lbcz$1;->b:Lbcz;

    invoke-virtual {v0}, Lbcz;->pauseByLogic()V

    .line 108
    iget-object v0, p0, Lbcz$1;->b:Lbcz;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbcz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lbcz$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    return-void
.end method
