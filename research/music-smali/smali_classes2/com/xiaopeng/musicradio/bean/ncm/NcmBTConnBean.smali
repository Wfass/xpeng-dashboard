.class public Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;
.super Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;
.source "NcmBTConnBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;
    }
.end annotation


# instance fields
.field private notify:Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotify()Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->notify:Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;

    return-object v0
.end method

.method public setNotify(Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->notify:Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NcmBTConnBean{enable=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->getEnable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgtype=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->getMsgtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;->notify:Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
