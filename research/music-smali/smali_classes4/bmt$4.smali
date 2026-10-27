.class Lbmt$4;
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

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lbmt$4;->b:Lbmt;

    iput-object p2, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const v0, 0x8967ce

    if-ne p1, v0, :cond_0

    .line 1376
    iget-object v0, p0, Lbmt$4;->b:Lbmt;

    invoke-virtual {v0}, Lbmt;->pauseByLogic()V

    .line 1377
    iget-object v0, p0, Lbmt$4;->b:Lbmt;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbmt;->b(Ljava/lang/String;)V

    .line 1378
    iget-object p1, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    .line 1379
    iget-object p1, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOffTime(J)V

    .line 1380
    iget-object p1, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOffMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_0
    iget-object p1, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 1367
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;

    invoke-virtual {p0, p1}, Lbmt$4;->a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;)V
    .locals 1

    .line 1370
    iget-object p1, p0, Lbmt$4;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setOff(Z)V

    return-void
.end method
