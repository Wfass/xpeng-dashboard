.class Lbcz$3;
.super Ljava/lang/Object;
.source "NetRadioModel.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lbcz$3;->b:Lbcz;

    iput-object p2, p0, Lbcz$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const v0, 0x8967ce

    if-ne p1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lbcz$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    .line 230
    iget-object v0, p0, Lbcz$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOffTime(J)V

    .line 231
    iget-object v0, p0, Lbcz$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOffMsg(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lbcz$3;->b:Lbcz;

    invoke-virtual {v0}, Lbcz;->pauseByLogic()V

    .line 233
    iget-object v0, p0, Lbcz$3;->b:Lbcz;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbcz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lbcz$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    .line 238
    :goto_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ab;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ab;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setOff(Z)V

    .line 223
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
