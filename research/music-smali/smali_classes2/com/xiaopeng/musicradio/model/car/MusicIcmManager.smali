.class public Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;
.super Ljava/lang/Object;
.source "MusicIcmManager.java"

# interfaces
.implements Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;
.implements Lcom/xiaopeng/musicradio/model/car/c$a;


# instance fields
.field private a:Landroid/car/hardware/icm/CarIcmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;)Landroid/car/hardware/icm/CarIcmManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;->a:Landroid/car/hardware/icm/CarIcmManager;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;Landroid/car/hardware/icm/CarIcmManager;)Landroid/car/hardware/icm/CarIcmManager;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;->a:Landroid/car/hardware/icm/CarIcmManager;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/car/Car;)V
    .locals 2

    const-string v0, "MusicIcmManager"

    const-string v1, "onServiceConnected: ======="

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager$1;-><init>(Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;Landroid/car/Car;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeEvent: ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101611

    if-ne v0, v1, :cond_0

    .line 46
    new-instance p1, Lcom/xiaopeng/musicradio/model/car/b$a;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/model/car/b$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    const v0, 0x2140160e

    if-ne p1, v0, :cond_1

    .line 48
    new-instance p1, Lcom/xiaopeng/musicradio/model/car/b$a;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/model/car/b$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorEvent: i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i1 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicIcmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
