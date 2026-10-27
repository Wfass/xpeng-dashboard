.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;
.super Ljava/lang/Object;
.source "RecommendRadioBeanV2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fmType:I

.field private id:I

.field private logoUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFmType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->fmType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->id:I

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setFmType(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->fmType:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->id:I

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBeanV2;->title:Ljava/lang/String;

    return-void
.end method
