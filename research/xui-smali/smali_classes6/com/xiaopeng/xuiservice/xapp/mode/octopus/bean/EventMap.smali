.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
.super Ljava/lang/Object;
.source "EventMap.java"


# instance fields
.field private mNaviTouchArea:Landroid/graphics/Rect;

.field private mSelectKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getNaviTouchArea()Landroid/graphics/Rect;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mNaviTouchArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectKeyMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mSelectKeyMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public setNaviTouchArea(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "naviTouchArea"    # Landroid/graphics/Rect;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mNaviTouchArea:Landroid/graphics/Rect;

    .line 21
    return-void
.end method

.method public setSelectKeyMap(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "selectKeyMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mSelectKeyMap:Landroid/util/SparseArray;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventMap{mNaviTouchArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mNaviTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectKeyMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->mSelectKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
