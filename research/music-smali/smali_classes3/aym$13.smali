.class Laym$13;
.super Lano;
.source "BluetoothServiceNforeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .line 234
    iput-object p1, p0, Laym$13;->a:Laym;

    invoke-direct {p0}, Lano;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 260
    invoke-super {p0}, Lano;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    .line 248
    invoke-super {p0, p1, p2, p3}, Lano;->a(Ljava/lang/String;II)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBtAutoConnectStateChanged prevState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", newState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMusicService"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x6e

    if-ne p3, p1, :cond_0

    .line 251
    iget-object p1, p0, Laym$13;->a:Laym;

    invoke-static {p1}, Laym;->e(Laym;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    new-instance p1, Lasa$g;

    iget-object p2, p0, Laym$13;->a:Laym;

    .line 253
    invoke-static {p2}, Laym;->d(Laym;)Lant;

    move-result-object p2

    invoke-virtual {p2}, Lant;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lasa$g;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lano;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceBondStateChanged prevState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMusicService"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x14b

    if-ne p3, p1, :cond_0

    const/16 p1, 0x14c

    if-ne p4, p1, :cond_0

    .line 240
    iget-object p1, p0, Laym$13;->a:Laym;

    invoke-static {p1}, Laym;->e(Laym;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    new-instance p1, Lasa$g;

    invoke-direct {p1, p2}, Lasa$g;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
