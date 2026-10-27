.class public Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;
.super Ljava/lang/Object;
.source "RecommendBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final SHOW_TIME_GLOBAL:Ljava/lang/String; = "global"

.field public static final SHOW_TIME_RESULT:Ljava/lang/String; = "result"

.field public static final SHOW_TIME_TTS:Ljava/lang/String; = "tts"

.field public static final SHOW_TIME_WAKEUP:Ljava/lang/String; = "wakeup"


# instance fields
.field private cardType:I

.field private duiWidget:Ljava/lang/String;

.field private hitText:Ljava/lang/String;

.field private hitTips:Ljava/lang/String;

.field private isHit:Z

.field private msgId:Ljava/lang/String;

.field private refMsgId:Ljava/lang/String;

.field private relateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;",
            ">;"
        }
    .end annotation
.end field

.field private relateText:Ljava/lang/String;

.field private showStage:Ljava/lang/String;

.field private showType:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updateType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->cardType:I

    return v0
.end method

.method public getDuiWidget()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->duiWidget:Ljava/lang/String;

    return-object v0
.end method

.method public getHitText()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->hitText:Ljava/lang/String;

    return-object v0
.end method

.method public getHitTips()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->hitTips:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMsgId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->refMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateList:Ljava/util/List;

    return-object v0
.end method

.method public getRelateText()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowStage()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showStage:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->updateType:Ljava/lang/String;

    return-object v0
.end method

.method public isHit()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->isHit:Z

    return v0
.end method

.method public setCardType(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->cardType:I

    return-void
.end method

.method public setDuiWidget(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->duiWidget:Ljava/lang/String;

    return-void
.end method

.method public setHit(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->isHit:Z

    return-void
.end method

.method public setHitText(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->hitText:Ljava/lang/String;

    return-void
.end method

.method public setHitTips(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->hitTips:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setRefMsgId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->refMsgId:Ljava/lang/String;

    return-void
.end method

.method public setRelateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateList:Ljava/util/List;

    return-void
.end method

.method public setRelateText(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateText:Ljava/lang/String;

    return-void
.end method

.method public setShowStage(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showStage:Ljava/lang/String;

    return-void
.end method

.method public setShowType(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showType:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->subType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->updateType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendBean{relateText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->relateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showStage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->showType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->isHit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hitTips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->hitTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/recommend/RecommendBean;->cardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
