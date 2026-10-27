.class public Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ReissueCallbakBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->data:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->data:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReissueCallbakBean{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;->data:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
