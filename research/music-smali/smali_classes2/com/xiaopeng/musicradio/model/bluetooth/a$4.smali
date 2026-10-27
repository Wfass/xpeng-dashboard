.class Lcom/xiaopeng/musicradio/model/bluetooth/a$4;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Z
    .locals 3

    .line 825
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(Lcom/xiaopeng/musicradio/model/bluetooth/a;)Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->a:F

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(F)Z

    move-result p1

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->f(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const-string p1, "mSetVolumeRetryTime > 10 , stop retry"

    .line 828
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->g(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 822
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a$4;->a(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
