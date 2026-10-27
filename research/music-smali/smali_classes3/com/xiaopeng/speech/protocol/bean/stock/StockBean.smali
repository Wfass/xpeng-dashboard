.class public Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "StockBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;
    }
.end annotation


# instance fields
.field public baseLineDate:F

.field public curMaxTransNum:F

.field public curMaxTransPrice:F

.field public curPosition:I

.field public length:F

.field public mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;

.field public mStockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
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
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;

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
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mTimeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StockBean{mBaseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;->mBaseData:Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$a;

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
