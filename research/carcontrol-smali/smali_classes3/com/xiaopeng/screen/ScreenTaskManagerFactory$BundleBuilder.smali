.class public Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
.super Ljava/lang/Object;
.source "ScreenTaskManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleBuilder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 1

    .line 421
    new-instance v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setActivityToken(Landroid/os/IBinder;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "activityToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "areaType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAutoResize(Z)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoResize"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setExchangeType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "exchangeType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFloating(Z)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "floating"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setForceAreaType(Z)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "forceAreaType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setMoveWindowAreaId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "areaId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setMoveWindowCurPos(FF)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 609
    iget-object p1, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v0, "y"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setMoveWindowStartPos(FF)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "startX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v0, "startY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public setMoveWindowState(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPid(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setResizeAreaType(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "fromAreaType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v0, "toAreaType"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResizeFrom(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "fromAreaType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResizeTo(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "toAreaType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTopOnly(Z)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "topOnly"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setUid(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setUserId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
