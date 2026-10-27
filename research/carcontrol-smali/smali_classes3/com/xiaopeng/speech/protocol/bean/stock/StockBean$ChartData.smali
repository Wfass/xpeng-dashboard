.class public Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;
.super Ljava/lang/Object;
.source "StockBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/stock/StockBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartData"
.end annotation


# instance fields
.field public mTime:Ljava/lang/String;

.field public mTransNum:F

.field public mTransPrice:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransPrice:F

    .line 187
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransNum:F

    .line 191
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransPrice:F

    .line 192
    iput p2, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTransNum:F

    .line 193
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/bean/stock/StockBean$ChartData;->mTime:Ljava/lang/String;

    return-void
.end method
