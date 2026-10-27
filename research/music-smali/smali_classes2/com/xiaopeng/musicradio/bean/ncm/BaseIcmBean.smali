.class public Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;
.super Ljava/lang/Object;
.source "BaseIcmBean.java"


# instance fields
.field private enable:Ljava/lang/String;

.field private msgtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgtype()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->msgtype:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->enable:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->msgtype:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->enable:Ljava/lang/String;

    return-void
.end method

.method public setMsgtype(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/BaseIcmBean;->msgtype:Ljava/lang/String;

    return-void
.end method
