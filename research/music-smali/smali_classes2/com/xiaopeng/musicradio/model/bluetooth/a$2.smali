.class Lcom/xiaopeng/musicradio/model/bluetooth/a$2;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;->rebootPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BluetoothMusicModel"

    const-string v1, "delay call rebootPlay() for 1 second as xui required"

    .line 563
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->y()V

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(Lcom/xiaopeng/musicradio/model/bluetooth/a;J)J

    return-void
.end method
