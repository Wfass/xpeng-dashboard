.class Lcom/xiaopeng/musicradio/model/bluetooth/a$3;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Lask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;
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

    .line 693
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusPause()V
    .locals 2

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus_Pause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->pauseByLogic()V

    .line 701
    :cond_0
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    :cond_1
    return-void
.end method

.method public focusPlay()V
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus_Play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(Lcom/xiaopeng/musicradio/model/bluetooth/a;Z)V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->d(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    return-void
.end method

.method public lowerVolume()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    .line 710
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a$3;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$c;)V

    return-void
.end method

.method public riseVolume()V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V

    .line 722
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a$3$2;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/a$3;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$c;)V

    return-void
.end method
