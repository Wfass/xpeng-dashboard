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

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 23
    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    .line 24
    const-string v2, ""

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

    .line 36
    return-void
.end method

.method private dateStrConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "date"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "convertDate":Ljava/lang/String;
    const-string v1, "\\+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "sets":[Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    if-ne v4, v2, :cond_0

    .line 170
    aget-object v2, v1, v3

    const-string v3, "T"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_0
    const-string v4, "T"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_1

    array-length v4, v1

    if-ne v4, v2, :cond_1

    .line 174
    const/4 v2, 0x1

    aget-object v4, v1, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 175
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .end local v4    # "index":I
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clearChartData()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
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
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    .line 52
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    .line 53
    return-void
.end method

.method public insertChartData(Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;)V
    .locals 1
    .param p1, "item"    # Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
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
    .local v0, "length":I
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;

    .line 75
    .local v2, "item":Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;
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
    iget v3, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransNum:F

    iput v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    .line 73
    .end local v2    # "item":Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    .line 84
    return-void
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 88
    if-eqz p1, :cond_15

    .line 89
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    .local v0, "result":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 91
    const-string v1, "fail"

    iput-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    .line 92
    return-void

    .line 95
    :cond_0
    const-string v1, "success"

    iput-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "symbol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->symbol:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->code:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->name:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "exchange"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->exchange:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "low"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "low"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "current"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "current"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->current:F

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "peLYR"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "peLYR"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->peLYR:F

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "peTTM"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "peTTM"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->peTTM:F

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "high"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "high"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "lastClose"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "lastClose"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "percentage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "percentage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->percentage:F

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "change"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "change"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_7

    :cond_9
    move v2, v3

    :goto_7
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->change:F

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->amount:F

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "open"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "open"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_9

    :cond_b
    move v2, v3

    :goto_9
    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->open:F

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "date"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, ""

    goto :goto_a

    :cond_c
    const-string v2, "date"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->dateStrConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->adate:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "volume"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "volume"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_b

    :cond_d
    move v2, v3

    :goto_b
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    iput v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->avolume:F

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "turnoverRate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "turnoverRate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    :cond_e
    iput v3, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->turnoverRate:F

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    const-string v2, "state"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->state:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v1, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v2, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v2, v2, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_f

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v1, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v1, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->high:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    goto :goto_c

    .line 126
    :cond_f
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v1, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v4, v4, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v1, v1, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->low:F

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    iget v3, v3, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;->lastClose:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    .line 130
    :goto_c
    const-string v1, "tradeTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 131
    .local v1, "time":Lorg/json/JSONArray;
    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 132
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 133
    .local v3, "length":I
    move v4, v2

    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_11

    .line 134
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "item":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    if-eqz v6, :cond_10

    .line 136
    iget-object v6, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "item":Ljava/lang/String;
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 142
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_11
    const-string v3, "chart"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v3, "chart"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    .line 143
    .local v3, "list":Lorg/json/JSONArray;
    :goto_e
    if-eqz v3, :cond_14

    .line 144
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 145
    .local v4, "length":I
    nop

    .local v2, "i":I
    :goto_f
    if-ge v2, v4, :cond_14

    .line 147
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 148
    .local v5, "item":Lorg/json/JSONObject;
    if-eqz v5, :cond_13

    .line 149
    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "date":Ljava/lang/String;
    const-string v7, "volume"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "volume":Ljava/lang/String;
    const-string v8, "price"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "price":Ljava/lang/String;
    new-instance v9, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-direct {v9, v10, v11, v6}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;-><init>(FFLjava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->insertChartData(Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "volume":Ljava/lang/String;
    .end local v8    # "price":Ljava/lang/String;
    :cond_13
    goto :goto_10

    .line 154
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 160
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v1    # "time":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "list":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :cond_14
    goto :goto_11

    .line 161
    :cond_15
    const-string v0, "fail"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    .line 164
    :goto_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StockBean{mBaseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$BaseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStockList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mStockList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curMaxTransPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransPrice:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", curMaxTransNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->curMaxTransNum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", res=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", baseLineDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->baseLineDate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->length:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
