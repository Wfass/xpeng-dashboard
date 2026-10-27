.class public Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;
.super Ljava/lang/Object;
.source "TypeVisualizerData.java"


# instance fields
.field private mFftData:[B

.field private mSamplingRate:I

.field private mType:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mType:I

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mFftData:[B

    .line 11
    iput p3, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mSamplingRate:I

    return-void
.end method


# virtual methods
.method public getFftData()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mFftData:[B

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mSamplingRate:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mType:I

    return v0
.end method

.method public setFftData([B)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mFftData:[B

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mSamplingRate:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;->mType:I

    return-void
.end method
