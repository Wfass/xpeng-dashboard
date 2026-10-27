.class final Lcom/xiaopeng/devtools/model/c/a/d/a$b;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private sv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic tj:Lcom/xiaopeng/devtools/model/c/a/d/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->sv:Ljava/lang/ref/WeakReference;

    .line 299
    return-void
.end method

.method private a(ILandroid/location/GpsStatus;)V
    .locals 3

    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 312
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result p1

    .line 313
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->d(Lcom/xiaopeng/devtools/model/c/a/d/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    const/4 v0, 0x0

    .line 316
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gt v0, p1, :cond_0

    .line 317
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 318
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/c/a/d/a;->d(Lcom/xiaopeng/devtools/model/c/a/d/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 320
    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->sv:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    iget-object p2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {p2}, Lcom/xiaopeng/devtools/model/c/a/d/a;->d(Lcom/xiaopeng/devtools/model/c/a/d/a;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->a(ILjava/util/List;)V

    .line 325
    :cond_1
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->c(Lcom/xiaopeng/devtools/model/c/a/d/a;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/model/c/a/d/a$b;->a(ILandroid/location/GpsStatus;)V

    .line 308
    return-void
.end method
