.class public Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "StockBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;,
        Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;
    }
.end annotation


# instance fields
.field public baseLineDate:F

.field public curMaxTransNum:F

.field public curMaxTransPrice:F

.field public curPosition:I

.field public length:F

.field public mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

.field public mStockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;",
            ">;"
        }
    .end annotation
.end field

.field public mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public res:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 23
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    const-string v2, ""

    .line 24
    iput-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    .line 27
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    .line 31
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    .line 32
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 33
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    .line 34
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    return-void
.end method

.method private dateStrConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\\+"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x2

    const-string v3, "T"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 169
    array-length v5, v0

    if-ne v5, v2, :cond_0

    .line 170
    aget-object p1, v0, v4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    array-length v0, p1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 174
    aget-object v2, p1, v0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 175
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clearChartData()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public clearStockData()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 52
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    return-void
.end method

.method public insertChartData(Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyMaxDataRetrive()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    :goto_0
    if-ge v1, v0, :cond_2

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;

    .line 75
    iget v3, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransPrice:F

    iget v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 76
    iget v3, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransPrice:F

    iput v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 79
    :cond_0
    iget v3, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransNum:F

    iget v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 80
    iget v2, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransNum:F

    iput v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 83
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    return-void
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "fail"

    if-eqz p1, :cond_14

    const-string v1, "extra"

    .line 89
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "success"

    .line 95
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->symbol:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->code:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->name:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "exchange"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->exchange:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "low"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "current"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->current:F

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "peLYR"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->peLYR:F

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "peTTM"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->peTTM:F

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "high"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "lastClose"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "percentage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_6

    :cond_8
    move v1, v3

    :goto_6
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->percentage:F

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "change"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_7

    :cond_9
    move v1, v3

    :goto_7
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->change:F

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "amount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_8

    :cond_a
    move v1, v3

    :goto_8
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->amount:F

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "open"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_9

    :cond_b
    move v1, v3

    :goto_9
    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->open:F

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v1, "date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, ""

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->dateStrConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->adate:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "volume"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_b

    :cond_d
    move v4, v3

    :goto_b
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->avolume:F

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v4, "turnoverRate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_e
    iput v3, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->turnoverRate:F

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v3, "state"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->state:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v0, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v0, :cond_f

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v0, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v5, v5, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v0, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    goto :goto_c

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v0, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v5, v5, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v0, v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    :goto_c
    const-string v0, "tradeTime"

    .line 130
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v3

    :goto_d
    if-ge v5, v4, :cond_11

    .line 134
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 135
    iget-object v7, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    if-eqz v7, :cond_10

    .line 136
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    const-string v0, "chart"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_e

    :cond_12
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_15

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_f
    if-ge v3, v0, :cond_15

    .line 147
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 149
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "price"

    .line 151
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    new-instance v7, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v7, v4, v6, v5}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;-><init>(FFLjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->insertChartData(Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v4

    .line 155
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_13
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 161
    :cond_14
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StockBean{mBaseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStockList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curMaxTransPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curMaxTransNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", res=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseLineDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
