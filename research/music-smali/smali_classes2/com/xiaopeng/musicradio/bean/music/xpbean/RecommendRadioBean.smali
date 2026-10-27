.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;
.super Ljava/lang/Object;
.source "RecommendRadioBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFmId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fmId"
    .end annotation
.end field

.field private mFmName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fmName"
    .end annotation
.end field

.field private mFmType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fmType"
    .end annotation
.end field

.field private mImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmFmId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmId:I

    return v0
.end method

.method public getmFmName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmName:Ljava/lang/String;

    return-object v0
.end method

.method public getmFmType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmType:I

    return v0
.end method

.method public getmImgUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setmFmId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmId:I

    return-void
.end method

.method public setmFmName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmName:Ljava/lang/String;

    return-void
.end method

.method public setmFmType(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mFmType:I

    return-void
.end method

.method public setmImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommendRadioBean;->mImgUrl:Ljava/lang/String;

    return-void
.end method
