.class public Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;
.super Ljava/lang/Object;
.source "LluDanceExtraData.java"


# instance fields
.field public legacyContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

.field private moduleData:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;


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

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->moduleData:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;

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

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->moduleData:Lcom/xiaopeng/lludancemanager/bean/LluDanceModuleData;

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

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->legacyContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;->effectName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->legacyContent:Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataContent;->videoPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
