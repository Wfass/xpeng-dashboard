.class public Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;
.super Ljava/lang/Object;
.source "VisualizerData.java"


# instance fields
.field private mFftData:[B

.field private mSamplingRate:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mFftData:[B

    .line 10
    iput p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mSamplingRate:I

    return-void
.end method


# virtual methods
.method public getFftData()[B
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mFftData:[B

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mSamplingRate:I

    return v0
.end method

.method public setFftData([B)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mFftData:[B

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;->mSamplingRate:I

    return-void
.end method
