.class public Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
.super Ljava/lang/Object;
.source "VipUrlInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlNight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlNight()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->urlNight:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlNight(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->urlNight:Ljava/lang/String;

    return-void
.end method
