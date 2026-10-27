.class public Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;
.super Ljava/lang/Object;
.source "RecommendReadingRadioBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8L


# instance fields
.field private channelId:I

.field private logoUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->channelId:I

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->channelId:I

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/RecommendReadingRadioBean;->title:Ljava/lang/String;

    return-void
.end method
