.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;
.super Ljava/lang/Object;
.source "SpectrumParams.java"


# instance fields
.field private mFrequencyValues:[F

.field private mMediaType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaTypeName:Ljava/lang/String;

.field private mWeightValues:[D

.field private ratioDelta:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getFrequencyValues()[F
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mFrequencyValues:[F

    return-object v0
.end method

.method public getMediaType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mMediaType:Ljava/util/List;

    return-object v0
.end method

.method public getMediaTypeName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mMediaTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRatioDelta()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->ratioDelta:F

    return v0
.end method

.method public getWeightValues()[D
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mWeightValues:[D

    return-object v0
.end method

.method public setFrequencyValues([F)V
    .locals 0
    .param p1, "frequencyValues"    # [F

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mFrequencyValues:[F

    .line 46
    return-void
.end method

.method public setMediaType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p1, "mediaType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mMediaType:Ljava/util/List;

    .line 22
    return-void
.end method

.method public setMediaTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaTypeName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mMediaTypeName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRatioDelta(F)V
    .locals 0
    .param p1, "ratioDelta"    # F

    .line 53
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->ratioDelta:F

    .line 54
    return-void
.end method

.method public setWeightValues([D)V
    .locals 0
    .param p1, "weightValues"    # [D

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->mWeightValues:[D

    .line 38
    return-void
.end method
