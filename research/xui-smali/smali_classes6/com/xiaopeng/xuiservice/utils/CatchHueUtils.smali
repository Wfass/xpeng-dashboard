.class public Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;
.super Ljava/lang/Object;
.source "CatchHueUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CatchHueUtils"

.field private static sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;


# instance fields
.field private PERIODIC:I

.field private mColor:I

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    const-string v0, "persist.sys.xpeng.catch_hue_periodic"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->PERIODIC:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mColor:I

    return-void
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .line 37
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 38
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 39
    .local v2, "width":I
    int-to-float v3, v1

    int-to-float v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 40
    .local v3, "sampleStride":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 41
    const/4 v3, 0x1

    .line 45
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 49
    .local v5, "hsv":[F
    const/16 v6, 0x168

    new-array v6, v6, [F

    .line 50
    .local v6, "hueScoreHistogram":[F
    const/high16 v7, -0x40800000    # -1.0f

    .line 51
    .local v7, "highScore":F
    const/4 v8, -0x1

    .line 53
    .local v8, "bestHue":I
    new-array v9, v0, [I

    .line 54
    .local v9, "pixels":[I
    const/4 v10, 0x0

    .line 56
    .local v10, "pixelCount":I
    const/4 v11, 0x0

    move v12, v8

    move v8, v7

    move v7, v11

    .local v7, "y":I
    .local v8, "highScore":F
    .local v12, "bestHue":I
    :goto_0
    if-ge v7, v1, :cond_6

    .line 57
    move v14, v12

    move v12, v10

    move v10, v8

    move v8, v11

    .local v8, "x":I
    .local v10, "highScore":F
    .local v12, "pixelCount":I
    .local v14, "bestHue":I
    :goto_1
    if-ge v8, v2, :cond_5

    .line 58
    move-object/from16 v15, p0

    invoke-virtual {v15, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    .line 59
    .local v16, "argb":I
    const/16 v17, 0xff

    shr-int/lit8 v18, v16, 0x18

    and-int v13, v17, v18

    .line 60
    .local v13, "alpha":I
    const/16 v4, 0x80

    if-ge v13, v4, :cond_1

    .line 62
    nop

    .line 57
    move/from16 v21, v1

    goto :goto_2

    .line 65
    :cond_1
    const/high16 v4, -0x1000000

    or-int v4, v16, v4

    .line 66
    .local v4, "rgb":I
    invoke-static {v4, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 68
    move/from16 v21, v1

    aget v1, v5, v11

    .end local v1    # "height":I
    .local v21, "height":I
    float-to-int v1, v1

    .line 69
    .local v1, "hue":I
    if-ltz v1, :cond_4

    array-length v11, v6

    if-lt v1, v11, :cond_2

    .line 71
    goto :goto_2

    .line 73
    :cond_2
    if-ge v12, v0, :cond_3

    .line 74
    add-int/lit8 v11, v12, 0x1

    .local v11, "pixelCount":I
    aput v4, v9, v12

    .line 76
    .end local v12    # "pixelCount":I
    move v12, v11

    .end local v11    # "pixelCount":I
    .restart local v12    # "pixelCount":I
    :cond_3
    const/4 v11, 0x1

    aget v17, v5, v11

    const/4 v11, 0x2

    aget v18, v5, v11

    mul-float v17, v17, v18

    .line 77
    .local v17, "score":F
    aget v11, v6, v1

    add-float v11, v11, v17

    aput v11, v6, v1

    .line 78
    aget v11, v6, v1

    cmpl-float v11, v11, v10

    if-lez v11, :cond_4

    .line 79
    aget v10, v6, v1

    .line 80
    move v14, v1

    .line 57
    .end local v1    # "hue":I
    .end local v4    # "rgb":I
    .end local v13    # "alpha":I
    .end local v16    # "argb":I
    .end local v17    # "score":F
    :cond_4
    :goto_2
    add-int/2addr v8, v3

    move/from16 v1, v21

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 56
    .end local v8    # "x":I
    .end local v21    # "height":I
    .local v1, "height":I
    :cond_5
    move-object/from16 v15, p0

    move/from16 v21, v1

    .end local v1    # "height":I
    .restart local v21    # "height":I
    add-int/2addr v7, v3

    move v8, v10

    move v10, v12

    move v12, v14

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 85
    .end local v7    # "y":I
    .end local v14    # "bestHue":I
    .end local v21    # "height":I
    .restart local v1    # "height":I
    .local v8, "highScore":F
    .local v10, "pixelCount":I
    .local v12, "bestHue":I
    :cond_6
    move-object/from16 v15, p0

    move/from16 v21, v1

    .end local v1    # "height":I
    .restart local v21    # "height":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .local v1, "rgbScores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/high16 v4, -0x1000000

    .line 87
    .local v4, "bestColor":I
    const/high16 v7, -0x40800000    # -1.0f

    .line 91
    .end local v8    # "highScore":F
    .local v7, "highScore":F
    move v8, v7

    move v7, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v7, "bestColor":I
    .restart local v8    # "highScore":F
    :goto_3
    if-ge v4, v10, :cond_a

    .line 92
    aget v11, v9, v4

    .line 93
    .local v11, "rgb":I
    invoke-static {v11, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 94
    const/4 v13, 0x0

    aget v14, v5, v13

    float-to-int v14, v14

    .line 95
    .local v14, "hue":I
    if-ne v14, v12, :cond_8

    .line 96
    const/16 v16, 0x1

    aget v17, v5, v16

    .line 97
    .local v17, "s":F
    const/16 v18, 0x2

    aget v19, v5, v18

    .line 98
    .local v19, "v":F
    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v13, v17, v20

    float-to-int v13, v13

    const v20, 0x461c4000    # 10000.0f

    mul-float v0, v19, v20

    float-to-int v0, v0

    add-int/2addr v13, v0

    .line 100
    .local v13, "bucket":I
    mul-float v0, v17, v19

    .line 101
    .local v0, "score":F
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v22, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/Float;

    .line 102
    .local v2, "oldTotal":Ljava/lang/Float;
    .local v22, "width":I
    if-nez v2, :cond_7

    move/from16 v20, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v20, v20, v0

    :goto_4
    move/from16 v23, v20

    .line 103
    .local v23, "newTotal":F
    move/from16 v24, v0

    move-object/from16 v25, v2

    move/from16 v0, v23

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .end local v2    # "oldTotal":Ljava/lang/Float;
    .end local v23    # "newTotal":F
    .local v0, "newTotal":F
    .local v24, "score":F
    .local v25, "oldTotal":Ljava/lang/Float;
    invoke-virtual {v1, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    cmpl-float v2, v0, v8

    if-lez v2, :cond_9

    .line 105
    move v2, v0

    .line 107
    .end local v8    # "highScore":F
    .local v2, "highScore":F
    move v0, v11

    .line 91
    .end local v7    # "bestColor":I
    .end local v11    # "rgb":I
    .end local v13    # "bucket":I
    .end local v14    # "hue":I
    .end local v17    # "s":F
    .end local v19    # "v":F
    .end local v24    # "score":F
    .end local v25    # "oldTotal":Ljava/lang/Float;
    .local v0, "bestColor":I
    move v7, v0

    move v8, v2

    goto :goto_5

    .end local v0    # "bestColor":I
    .end local v22    # "width":I
    .local v2, "width":I
    .restart local v7    # "bestColor":I
    .restart local v8    # "highScore":F
    :cond_8
    move/from16 v22, v2

    const/16 v16, 0x1

    const/16 v18, 0x2

    .end local v2    # "width":I
    .restart local v22    # "width":I
    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v22

    move/from16 v0, p1

    goto :goto_3

    .line 112
    .end local v4    # "i":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    :cond_a
    move/from16 v22, v2

    .end local v2    # "width":I
    .restart local v22    # "width":I
    return v7
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;
    .locals 2

    .line 176
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    if-nez v0, :cond_1

    .line 177
    const-class v0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    .line 181
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->sService:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    return-object v0
.end method

.method public static synthetic lambda$registerHueDataListener$0(Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    .local v1, "id":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/view/IWindowManager;->screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x64

    .line 130
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v2

    .line 135
    .local v2, "color":I
    iget v3, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mColor:I

    if-eq v2, v3, :cond_1

    .line 136
    const-string v3, "CatchHueUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHueData, displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    .line 141
    .local v4, "l":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;
    invoke-interface {v4, v1, v2}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;->onHueData(II)V

    .line 142
    .end local v4    # "l":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;
    goto :goto_1

    .line 144
    :cond_0
    iput v2, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2    # "color":I
    :cond_1
    goto :goto_2

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CatchHueUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHueData failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v1    # "id":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 150
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized registerHueDataListener(ILcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    monitor-enter p0

    .line 116
    :try_start_0
    const-string v0, "CatchHueUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHueDataListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    .line 125
    const-string v0, "CatchHueUtils"

    const-string v1, "start capture color"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$CatchHueUtils$Tg5nlM8LvbVIDjIR21OkI56PvqU;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$CatchHueUtils$Tg5nlM8LvbVIDjIR21OkI56PvqU;-><init>(Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;)V

    const-wide/16 v3, 0x0

    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->PERIODIC:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_2
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "displayId":I
    .end local p2    # "listener":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;
    throw p1
.end method

.method public declared-synchronized unregisterHueDataListener(ILcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "CatchHueUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterHueDataListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "CatchHueUtils"

    const-string v1, "stop capture color"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    monitor-exit p0

    return-void

    .line 154
    .end local p1    # "displayId":I
    .end local p2    # "listener":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;
    throw p1
.end method
