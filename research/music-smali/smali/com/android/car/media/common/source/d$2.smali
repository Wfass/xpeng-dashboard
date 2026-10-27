.class Lcom/android/car/media/common/source/d$2;
.super Ljava/lang/Object;
.source "MediaSourceViewModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/media/common/source/d;->b(Landroid/app/Application;I)Landroid/car/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/car/media/common/source/d;


# direct methods
.method constructor <init>(Lcom/android/car/media/common/source/d;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/car/media/common/source/d$2;->b:Lcom/android/car/media/common/source/d;

    iput p2, p0, Lcom/android/car/media/common/source/d$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "carservice connected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSourceViewModel"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/android/car/media/common/source/d$2;->b:Lcom/android/car/media/common/source/d;

    iget-object v0, p0, Lcom/android/car/media/common/source/d$2;->b:Lcom/android/car/media/common/source/d;

    invoke-static {v0}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/d;)Landroid/car/Car;

    move-result-object v0

    const-string v1, "car_media"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarMediaManager;

    invoke-static {p1, v0}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/d;Landroid/car/media/CarMediaManager;)Landroid/car/media/CarMediaManager;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "carservice connected manager: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/car/media/common/source/d$2;->b:Lcom/android/car/media/common/source/d;

    invoke-static {v0}, Lcom/android/car/media/common/source/d;->b(Lcom/android/car/media/common/source/d;)Landroid/car/media/CarMediaManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/car/media/common/source/d$2;->b:Lcom/android/car/media/common/source/d;

    iget p2, p0, Lcom/android/car/media/common/source/d$2;->a:I

    invoke-static {p1, p2}, Lcom/android/car/media/common/source/d;->a(Lcom/android/car/media/common/source/d;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    :goto_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carservice disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSourceViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
