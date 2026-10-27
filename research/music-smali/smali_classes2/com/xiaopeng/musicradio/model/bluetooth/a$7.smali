.class Lcom/xiaopeng/musicradio/model/bluetooth/a$7;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 4

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(Lcom/xiaopeng/musicradio/model/bluetooth/a;)Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(Lcom/xiaopeng/musicradio/model/bluetooth/a;)Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(F)Z

    move-result v0

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeInternal ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "setVolumeInternal failed, service null"

    .line 966
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 959
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a$7;->a(Ljava/lang/Float;)V

    return-void
.end method
