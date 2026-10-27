.class Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;
.super Ljava/lang/Object;
.source "MusicIcmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;->a(Landroid/car/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/car/Car;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;Landroid/car/Car;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->b:Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->a:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MusicIcmManager"

    const-string v1, "run: ======== "

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->b:Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->a:Landroid/car/Car;

    const-string v3, "xp_icm"

    invoke-virtual {v2, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/icm/CarIcmManager;

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;->a(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;Landroid/car/hardware/icm/CarIcmManager;)Landroid/car/hardware/icm/CarIcmManager;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x21101611

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x2140160e

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->b:Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;->a(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;)Landroid/car/hardware/icm/CarIcmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;->b:Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;

    invoke-virtual {v2, v1, v3}, Landroid/car/hardware/icm/CarIcmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 35
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
