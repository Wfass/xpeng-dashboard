.class public Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;
.super Ljava/lang/Object;
.source "NetRadioIcmBean.java"


# instance fields
.field private enable:Ljava/lang/String;

.field private msgtype:Ljava/lang/String;

.field private net_radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

.field private reporttime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->enable:Ljava/lang/String;

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->msgtype:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgtype()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->msgtype:Ljava/lang/String;

    return-object v0
.end method

.method public getNetRadio()Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->net_radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    return-object v0
.end method

.method public getReporttime()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->reporttime:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->enable:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMsgtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgtype"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->msgtype:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setNetRadio(Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;)V
    .locals 0
    .param p1, "net_radio"    # Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->net_radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    .line 47
    return-void
.end method

.method public setReporttime(Ljava/lang/String;)V
    .locals 0
    .param p1, "reporttime"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->reporttime:Ljava/lang/String;

    .line 39
    return-void
.end method
