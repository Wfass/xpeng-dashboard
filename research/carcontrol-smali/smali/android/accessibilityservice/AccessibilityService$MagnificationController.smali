.class public final Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    }
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .locals 0

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1234
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    .line 1235
    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    return-void
.end method

.method private setMagnificationCallbackEnabled(Z)V
    .locals 2

    .line 1315
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1316
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1317
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1316
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1322
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V
    .locals 3

    .line 1270
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1272
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    .line 1275
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1276
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 1281
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1283
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 13

    move-object v8, p0

    .line 1334
    iget-object v1, v8, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1335
    :try_start_0
    iget-object v0, v8, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1344
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v3, v8, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_2

    .line 1348
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1349
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/Handler;

    if-eqz v11, :cond_1

    .line 1351
    new-instance v12, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;

    move-object v1, v12

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;FFF)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object v1, v3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 1360
    invoke-interface/range {v1 .. v6}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    :try_start_1
    const-string v0, "AccessibilityService"

    const-string v3, "Received magnification changed callback with no listeners registered!"

    .line 1336
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1339
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 1345
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCenterX()F
    .locals 3

    .line 1405
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1406
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1407
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1406
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Failed to obtain center X"

    .line 1412
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .line 1434
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1435
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1436
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1435
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1439
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Failed to obtain center Y"

    .line 1441
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .locals 3

    .line 1468
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1469
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1470
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1469
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Failed to obtain magnified region"

    .line 1475
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1479
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 3

    .line 1376
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1377
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1378
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1377
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Failed to obtain scale"

    .line 1383
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method onServiceConnectedLocked()V
    .locals 1

    .line 1242
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1243
    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method public removeListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)Z
    .locals 4

    .line 1293
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1297
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 1301
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    .line 1304
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1307
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1310
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 1311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset(Z)Z
    .locals 2

    .line 1497
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1498
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1499
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1498
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1502
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "AccessibilityService"

    const-string v1, "Failed to reset"

    .line 1504
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCenter(FFZ)Z
    .locals 7

    .line 1557
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1558
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1559
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1558
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1562
    :try_start_0
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationScaleAndCenter(IFFFZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "AccessibilityService"

    const-string p3, "Failed to set center"

    .line 1565
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setScale(FZ)Z
    .locals 7

    .line 1525
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1526
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1527
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$100(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 1526
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1530
    :try_start_0
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v3, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationScaleAndCenter(IFFFZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "AccessibilityService"

    const-string v0, "Failed to set scale"

    .line 1533
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
