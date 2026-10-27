.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;
.super Ljava/lang/Object;
.source "DynamicExtremeValue.java"


# instance fields
.field private mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    .line 9
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 3
    .param p1, "value"    # F

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 14
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mSize:I

    if-lt v1, v2, :cond_0

    .line 15
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 18
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAverageValue()F
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "sum":F
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 34
    .local v3, "f":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v1, v4

    .line 35
    .end local v3    # "f":Ljava/lang/Float;
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    monitor-exit v0

    return v2

    .line 37
    .end local v1    # "sum":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxValue()F
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 42
    const/4 v1, 0x1

    .line 43
    .local v1, "max":F
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 44
    .local v3, "f":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v4

    .line 45
    .end local v3    # "f":Ljava/lang/Float;
    goto :goto_0

    .line 46
    :cond_0
    monitor-exit v0

    return v1

    .line 47
    .end local v1    # "max":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinValue()F
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 52
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 53
    .local v1, "min":F
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 54
    .local v3, "f":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v1, v4

    .line 55
    .end local v3    # "f":Ljava/lang/Float;
    goto :goto_0

    .line 56
    :cond_0
    monitor-exit v0

    return v1

    .line 57
    .end local v1    # "min":F
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 23
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mSize:I

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mSize:I

    if-le v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/DynamicExtremeValue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
