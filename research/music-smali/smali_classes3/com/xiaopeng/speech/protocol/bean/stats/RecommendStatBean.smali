.class public Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;
.super Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
.source "RecommendStatBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private clickPosition:I

.field private clickText:Ljava/lang/String;

.field private clickTime:J

.field private firstText:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private refMsgId:Ljava/lang/String;

.field private secondText:Ljava/lang/String;

.field private showTime:J

.field private subType:Ljava/lang/String;

.field private thirdText:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x191

    .line 79
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getClickPosition()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickPosition:I

    return v0
.end method

.method public getClickText()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickText:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTime()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickTime:J

    return-wide v0
.end method

.method public getFirstText()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->firstText:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMsgId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->refMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondText()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->secondText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->showTime:J

    return-wide v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdText()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->thirdText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setClickPosition(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickPosition:I

    return-void
.end method

.method public setClickText(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickText:Ljava/lang/String;

    return-void
.end method

.method public setClickTime(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->clickTime:J

    return-void
.end method

.method public setFirstText(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->firstText:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setRefMsgId(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->refMsgId:Ljava/lang/String;

    return-void
.end method

.method public setSecondText(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->secondText:Ljava/lang/String;

    return-void
.end method

.method public setShowTime(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->showTime:J

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->subType:Ljava/lang/String;

    return-void
.end method

.method public setThirdText(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->thirdText:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendStatBean{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->showTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->firstText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", secondText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->secondText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/RecommendStatBean;->thirdText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
