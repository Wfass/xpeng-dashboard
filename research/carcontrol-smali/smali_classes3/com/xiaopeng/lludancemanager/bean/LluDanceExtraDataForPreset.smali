.class public Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;
.super Ljava/lang/Object;
.source "LluDanceExtraDataForPreset.java"


# instance fields
.field private RscImage:Ljava/lang/String;

.field private content:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

.field private localContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->localContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;->lightAndDanceAuthor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->localContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;->lightAndDanceLength:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->content:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;->effectName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRscImage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->RscImage:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->content:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;->videoPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
