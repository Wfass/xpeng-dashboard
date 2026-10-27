.class Lcom/xiaopeng/musicradio/model/bluetooth/a$3$1;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Lask$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->lowerVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/a$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a$3;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSoundVolume(F)V
    .locals 2

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowerVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a$3;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->setVolume(F)Z

    return-void
.end method
