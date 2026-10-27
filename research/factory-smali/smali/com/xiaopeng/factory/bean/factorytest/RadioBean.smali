.class public Lcom/xiaopeng/factory/bean/factorytest/RadioBean;
.super Ljava/lang/Object;
.source "RadioBean.java"


# instance fields
.field private bassGain:I

.field private freqPoint:I

.field private gBanlanceLevel:I

.field private gFaderLevel:I

.field private heroLoudnessOn:I

.field private mMuteState:I

.field private mTunerLevel:I

.field private midGain:I

.field private pInputSource:I

.field private primaryVolume:I

.field private radioCurrentBand:I

.field private radioCurrentFreq:I

.field private state:I

.field private trebleGain:I

.field private tunerpower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBassGain()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->bassGain:I

    return v0
.end method

.method public getFreqPoint()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->freqPoint:I

    return v0
.end method

.method public getHeroLoudnessOn()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->heroLoudnessOn:I

    return v0
.end method

.method public getMidGain()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->midGain:I

    return v0
.end method

.method public getMuteState()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->mMuteState:I

    return v0
.end method

.method public getPrimaryVolume()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->primaryVolume:I

    return v0
.end method

.method public getRadioCurrentBand()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->radioCurrentBand:I

    return v0
.end method

.method public getRadioCurrentFreq()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->radioCurrentFreq:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->state:I

    return v0
.end method

.method public getTrebleGain()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->trebleGain:I

    return v0
.end method

.method public getTunerpower()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->tunerpower:I

    return v0
.end method

.method public getgBanlanceLevel()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->gBanlanceLevel:I

    return v0
.end method

.method public getgFaderLevel()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->gFaderLevel:I

    return v0
.end method

.method public getmTunerLevel()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->mTunerLevel:I

    return v0
.end method

.method public getpInputSource()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->pInputSource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u6536\u97f3\u673aband=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->radioCurrentBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5f53\u524d\u6536\u97f3\u673a\u9891\u70b9\u00d7100=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->radioCurrentFreq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nfreqPoint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->freqPoint:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\npInputSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->pInputSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\n\u6536\u97f3\u673a\u6253\u5f00\u72b6\u6001=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->tunerpower:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nbassGain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->bassGain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nmidGain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->midGain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\ntrebleGain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->trebleGain:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\ngBanlanceLevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->gBanlanceLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\ngFaderLevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->gFaderLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nheroLoudnessOn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->heroLoudnessOn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nmMuteState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->mMuteState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nmTunerLevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->mTunerLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nstate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/factorytest/RadioBean;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
