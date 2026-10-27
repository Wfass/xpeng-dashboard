.class public Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;
.super Ljava/lang/Object;
.source "RadioIcmBean.java"


# instance fields
.field private enable:Ljava/lang/String;

.field private msgtype:Ljava/lang/String;

.field private radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

.field private reporttime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->enable:Ljava/lang/String;

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->msgtype:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgtype()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->msgtype:Ljava/lang/String;

    return-object v0
.end method

.method public getRadio()Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    return-object v0
.end method

.method public getReporttime()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->reporttime:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->enable:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMsgtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgtype"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->msgtype:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setRadio(Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;)V
    .locals 0
    .param p1, "radio"    # Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->radio:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    .line 47
    return-void
.end method

.method public setReporttime(Ljava/lang/String;)V
    .locals 0
    .param p1, "reporttime"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->reporttime:Ljava/lang/String;

    .line 39
    return-void
.end method
