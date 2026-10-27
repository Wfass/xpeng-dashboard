.class public Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;
.super Ljava/lang/Object;
.source "MusicIcmBean.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private enable:Ljava/lang/String;

.field private msgtype:Ljava/lang/String;

.field private music:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

.field private reporttime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->enable:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->msgtype:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgtype()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->msgtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->music:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    return-object v0
.end method

.method public getReporttime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->reporttime:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->enable:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMsgtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgtype"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->msgtype:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMusic(Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;)V
    .locals 0
    .param p1, "music"    # Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->music:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    .line 50
    return-void
.end method

.method public setReporttime(Ljava/lang/String;)V
    .locals 0
    .param p1, "reporttime"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->reporttime:Ljava/lang/String;

    .line 42
    return-void
.end method
