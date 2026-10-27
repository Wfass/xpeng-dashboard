.class public Lcom/android/car/internal/CarRatedFloatListeners;
.super Ljava/lang/Object;
.source "CarRatedFloatListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NANOSECOND_PER_SECOND:F = 1.0E9f


# instance fields
.field protected mAreaIdToLastUpdateTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersToRate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersUpdateTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRate:F


# direct methods
.method protected constructor <init>(F)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const/high16 v0, -0x31000000

    .line 38
    iput v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    .line 44
    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return-void
.end method


# virtual methods
.method public addAndUpdateRate(Ljava/lang/Object;F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 89
    iget-object v1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    cmpg-float p1, p1, p2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    .line 91
    iput p2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRate()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public needUpdateForAreaId(IJ)Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public needUpdateForSelectedListener(Ljava/lang/Object;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 112
    iget-object v1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, p2

    if-gtz v0, :cond_2

    const v0, 0x4e6e6b28    # 1.0E9f

    .line 123
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 125
    iget-object p3, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_2
    :goto_0
    return v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
