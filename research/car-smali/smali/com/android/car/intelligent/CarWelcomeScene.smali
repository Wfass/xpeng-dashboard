.class Lcom/android/car/intelligent/CarWelcomeScene;
.super Ljava/lang/Object;
.source "CarWelcomeScene.java"


# static fields
.field private static final CYCLE_ENTER:I = 0x1

.field private static final CYCLE_EXIT:I = 0x2

.field private static final INVALID:I = -0x1

.field private static final REQUIRED_PROPERTIES:[I

.field private static final TAG:Ljava/lang/String; = "CarWelcomeScene"


# instance fields
.field private final mCacheBeltSt:[I

.field private final mCacheDoorSt:[I

.field private final mCacheOccupiedSt:[I

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mFactoryMode:I

.field private mGearLevel:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIgStatus:I

.field private mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

.field private mPropertyService:Lcom/android/car/CarPropertyService;

.field private final mSceneCyclePos:[I

.field private mStationaryStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/intelligent/CarWelcomeScene;->REQUIRED_PROPERTIES:[I

    return-void

    :array_0
    .array-data 4
        0x21401c0c
        0x21401c0d
        0x21401c0e
        0x21401c10
        0x21401c07
        0x21401c4f
        0x21401c4f
        0x21401cc8
        0x21401cca
        0x21411c19
        0x21401205
        0x21401409
        0x2140125c
        0x2140146a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    .line 65
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mSceneCyclePos:[I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mGearLevel:I

    .line 71
    iput v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    .line 72
    iput v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    .line 75
    new-instance v0, Lcom/android/car/intelligent/CarWelcomeScene$1;

    invoke-direct {v0, p0}, Lcom/android/car/intelligent/CarWelcomeScene$1;-><init>(Lcom/android/car/intelligent/CarWelcomeScene;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 91
    iput-object p1, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 93
    iput-object p3, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mEventHandler:Landroid/os/Handler;

    .line 94
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/car/intelligent/CarWelcomeScene;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarWelcomeScene;

    .line 29
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/intelligent/CarWelcomeScene;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/intelligent/CarWelcomeScene;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarWelcomeScene;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method private checkWelcomeWhenBeltChanged(IIJ)V
    .locals 11
    .param p1, "pos"    # I
    .param p2, "belt"    # I
    .param p3, "timestamp"    # J

    .line 263
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheDoorStatusByPosition(I)I

    move-result v0

    .line 264
    .local v0, "door":I
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheOccupiedStatusByPosition(I)I

    move-result v1

    .line 265
    .local v1, "occupied":I
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheBeltStatusByPosition(I)I

    move-result v2

    .line 266
    .local v2, "oldBelt":I
    if-eq p2, v2, :cond_2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 269
    :cond_0
    const-string v3, "CarWelcomeScene"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "checkWelcomeWhenBeltChanged: pos=%d ig=%d gear=%d station=%d occupied=%d belt=%d door=%d"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget v7, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget v10, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mGearLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x3

    iget v10, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    .line 269
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v3, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    if-ne v3, v9, :cond_1

    iget v3, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    if-ne v3, v9, :cond_1

    if-ne v1, v9, :cond_1

    if-ne v0, v9, :cond_1

    .line 277
    if-ne p2, v9, :cond_1

    .line 279
    new-instance v3, Landroid/car/intelligent/CarSceneEvent;

    invoke-direct {v3}, Landroid/car/intelligent/CarSceneEvent;-><init>()V

    .line 280
    .local v3, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    invoke-virtual {v3, v9}, Landroid/car/intelligent/CarSceneEvent;->setSceneAction(I)V

    .line 281
    invoke-virtual {v3, p1}, Landroid/car/intelligent/CarSceneEvent;->setScenePosition(I)V

    .line 282
    invoke-virtual {v3, p3, p4}, Landroid/car/intelligent/CarSceneEvent;->setTimeStamp(J)V

    .line 283
    const-string v4, "CarWelcomeScene"

    const-string v5, "checkWelcomeWhenBeltChanged: sceneEvent=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    invoke-interface {v4, v3}, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    .line 287
    .end local v3    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    :cond_1
    return-void

    .line 267
    :cond_2
    :goto_0
    return-void
.end method

.method private checkWelcomeWhenDoorChanged([Ljava/lang/Integer;J)V
    .locals 16
    .param p1, "doors"    # [Ljava/lang/Integer;
    .param p2, "timestamp"    # J

    move-object/from16 v0, p0

    .line 311
    move-wide/from16 v1, p2

    iget-object v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    if-nez v3, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 316
    const/4 v5, 0x1

    add-int v6, v5, v4

    .line 317
    .local v6, "pos":I
    invoke-direct {v0, v6}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheDoorStatusByPosition(I)I

    move-result v7

    .line 318
    .local v7, "oldDoor":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 319
    goto/16 :goto_2

    .line 321
    :cond_1
    invoke-direct {v0, v6}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheOccupiedStatusByPosition(I)I

    move-result v8

    .line 322
    .local v8, "occupied":I
    invoke-direct {v0, v6}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheBeltStatusByPosition(I)I

    move-result v9

    .line 323
    .local v9, "belt":I
    const-string v10, "CarWelcomeScene"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v12, "checkWelcomeWhenDoorChanged: pos=%d ig=%d gear=%d station=%d occupied=%d belt=%d door=%d cycle=%d"

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    .line 324
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    iget v14, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    const/4 v14, 0x2

    iget v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mGearLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v14

    const/4 v3, 0x3

    iget v14, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v3, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v3, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v3, 0x6

    aget-object v14, p1, v4

    aput-object v14, v13, v3

    const/4 v3, 0x7

    iget-object v14, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mSceneCyclePos:[I

    aget v14, v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    .line 323
    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    if-ne v3, v5, :cond_3

    iget v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    if-ne v3, v5, :cond_3

    if-ne v8, v5, :cond_3

    .line 330
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_2

    if-ne v9, v5, :cond_2

    .line 332
    new-instance v3, Landroid/car/intelligent/CarSceneEvent;

    invoke-direct {v3}, Landroid/car/intelligent/CarSceneEvent;-><init>()V

    .line 333
    .local v3, "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    invoke-virtual {v3, v5}, Landroid/car/intelligent/CarSceneEvent;->setSceneAction(I)V

    .line 334
    invoke-virtual {v3, v6}, Landroid/car/intelligent/CarSceneEvent;->setScenePosition(I)V

    .line 335
    invoke-virtual {v3, v1, v2}, Landroid/car/intelligent/CarSceneEvent;->setTimeStamp(J)V

    .line 336
    const-string v10, "CarWelcomeScene"

    const-string v11, "checkWelcomeWhenDoorChanged: sceneEvent=%s"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v5, v12

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v5, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    invoke-interface {v5, v3}, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    .line 338
    .end local v3    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    goto :goto_1

    :cond_2
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mSceneCyclePos:[I

    aget v3, v3, v6

    if-eq v3, v5, :cond_3

    .line 340
    iget-object v3, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mSceneCyclePos:[I

    aput v5, v3, v6

    .line 341
    new-instance v3, Landroid/car/intelligent/CarSceneEvent;

    invoke-direct {v3}, Landroid/car/intelligent/CarSceneEvent;-><init>()V

    .line 342
    .restart local v3    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/car/intelligent/CarSceneEvent;->setSceneAction(I)V

    .line 343
    invoke-virtual {v3, v6}, Landroid/car/intelligent/CarSceneEvent;->setScenePosition(I)V

    .line 344
    invoke-virtual {v3, v1, v2}, Landroid/car/intelligent/CarSceneEvent;->setTimeStamp(J)V

    .line 345
    const-string v11, "CarWelcomeScene"

    const-string v12, "checkWelcomeWhenDoorChanged: sceneEvent=%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v5, v0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    invoke-interface {v5, v3}, Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V

    .end local v3    # "sceneEvent":Landroid/car/intelligent/CarSceneEvent;
    .end local v8    # "occupied":I
    .end local v9    # "belt":I
    goto :goto_3

    .line 315
    :cond_3
    :goto_1
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v3, v10

    goto/16 :goto_0

    .line 350
    .end local v4    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "oldDoor":I
    :cond_5
    return-void
.end method

.method private getCacheBeltStatusByPosition(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 224
    const/4 v0, -0x1

    return v0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCacheDoorStatusByPosition(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 241
    const/4 v0, -0x1

    return v0

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCacheOccupiedStatusByPosition(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 207
    const/4 v0, -0x1

    return v0

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 121
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 122
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 123
    .local v2, "timestamp":J
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_0

    .line 157
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    .line 158
    .local v9, "data":[Ljava/lang/Integer;
    if-eqz v9, :cond_1

    array-length v10, v9

    if-ne v10, v4, :cond_1

    .line 159
    invoke-direct {p0, v9, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->checkWelcomeWhenDoorChanged([Ljava/lang/Integer;J)V

    .line 160
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    aget-object v10, v9, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v5

    .line 161
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    aget-object v5, v9, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v8

    .line 162
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    aget-object v5, v9, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v7

    .line 163
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheDoorSt:[I

    aget-object v5, v9, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    goto/16 :goto_0

    .line 153
    .end local v9    # "data":[Ljava/lang/Integer;
    :sswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->updateSceneCycle(IIJ)V

    .line 154
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    .line 155
    goto/16 :goto_0

    .line 149
    :sswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v6, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->updateSceneCycle(IIJ)V

    .line 150
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v7

    .line 151
    goto/16 :goto_0

    .line 145
    :sswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v7, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->updateSceneCycle(IIJ)V

    .line 146
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v8

    .line 147
    goto/16 :goto_0

    .line 137
    :sswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->checkWelcomeWhenBeltChanged(IIJ)V

    .line 138
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    .line 139
    goto/16 :goto_0

    .line 133
    :sswitch_5
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v6, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->checkWelcomeWhenBeltChanged(IIJ)V

    .line 134
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v7

    .line 135
    goto/16 :goto_0

    .line 129
    :sswitch_6
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v7, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->checkWelcomeWhenBeltChanged(IIJ)V

    .line 130
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v8

    .line 131
    goto/16 :goto_0

    .line 125
    :sswitch_7
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v8, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->checkWelcomeWhenBeltChanged(IIJ)V

    .line 126
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheBeltSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 127
    goto :goto_0

    .line 141
    :sswitch_8
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v8, v4, v2, v3}, Lcom/android/car/intelligent/CarWelcomeScene;->updateSceneCycle(IIJ)V

    .line 142
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mCacheOccupiedSt:[I

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 143
    goto :goto_0

    .line 176
    :sswitch_9
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mFactoryMode:I

    .line 177
    const-string v4, "persist.sys.xiaopeng.factory_mode"

    iget v5, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mFactoryMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "CarWelcomeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: persist.sys.xiaopeng.factory_mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mFactoryMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto :goto_0

    .line 170
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_a
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mIgStatus:I

    .line 171
    goto :goto_0

    .line 173
    :sswitch_b
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mStationaryStatus:I

    .line 174
    goto :goto_0

    .line 167
    :sswitch_c
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mGearLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    nop

    .line 183
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    :cond_1
    :goto_0
    goto :goto_1

    .line 115
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 181
    .restart local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarWelcomeScene;
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401205 -> :sswitch_c
        0x2140125c -> :sswitch_b
        0x21401409 -> :sswitch_a
        0x2140146a -> :sswitch_9
        0x21401c07 -> :sswitch_8
        0x21401c0c -> :sswitch_7
        0x21401c0d -> :sswitch_6
        0x21401c0e -> :sswitch_5
        0x21401c10 -> :sswitch_4
        0x21401c4f -> :sswitch_3
        0x21401cc8 -> :sswitch_2
        0x21401cca -> :sswitch_1
        0x21411c19 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 109
    :try_start_0
    sget-object v0, Lcom/android/car/intelligent/CarWelcomeScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 110
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/intelligent/CarWelcomeScene;
    throw v0
.end method


# virtual methods
.method public init(Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    .line 97
    invoke-direct {p0}, Lcom/android/car/intelligent/CarWelcomeScene;->subscribeToProperties()V

    .line 98
    iput-object p1, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    .line 99
    return-void
.end method

.method public release()V
    .locals 6

    .line 102
    sget-object v0, Lcom/android/car/intelligent/CarWelcomeScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 103
    .local v3, "property":I
    iget-object v4, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 102
    .end local v3    # "property":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mListener:Landroid/car/intelligent/CarIntelligentEngineManager$CarWelcomeSceneListener;

    .line 106
    return-void
.end method

.method public updateSceneCycle(IIJ)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "newOccupied"    # I
    .param p3, "timestamp"    # J

    .line 187
    invoke-direct {p0, p1}, Lcom/android/car/intelligent/CarWelcomeScene;->getCacheOccupiedStatusByPosition(I)I

    move-result v0

    .line 188
    .local v0, "occupied":I
    if-eq v0, p2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/car/intelligent/CarWelcomeScene;->mSceneCyclePos:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 192
    :cond_0
    return-void
.end method
