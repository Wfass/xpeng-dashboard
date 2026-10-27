.class Laym$15;
.super Lanm;
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

    .line 292
    iput-object p1, p0, Laym$15;->a:Laym;

    invoke-direct {p0}, Lanm;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "BluetoothMusicService"

    const-string v1, "A2dp#onServiceReady() called"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Laym$15;->a:Laym;

    invoke-static {v0}, Laym;->b(Laym;)Lank;

    move-result-object v1

    invoke-virtual {v1}, Lank;->b()Z

    move-result v1

    iget-object v2, p0, Laym$15;->a:Laym;

    invoke-static {v2}, Laym;->b(Laym;)Lank;

    move-result-object v2

    invoke-virtual {v2}, Lank;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laym;->b(Laym;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2dp#onStateChanged(): address = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], prevState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p2}, Layn;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], newState = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {p3}, Layn;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMusicService"

    .line 295
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x96

    const/16 v0, 0x8c

    if-eq p3, v0, :cond_1

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 299
    :goto_1
    iget-object v1, p0, Laym$15;->a:Laym;

    invoke-static {v1, p3}, Laym;->b(Laym;I)I

    .line 300
    new-instance v1, Lasa$a;

    iget-object v2, p0, Laym$15;->a:Laym;

    invoke-static {v2}, Laym;->f(Laym;)I

    move-result v2

    invoke-direct {v1, v2}, Lasa$a;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eq p3, p2, :cond_2

    .line 302
    iget-object p2, p0, Laym$15;->a:Laym;

    invoke-static {p2}, Laym;->g(Laym;)V

    .line 304
    :cond_2
    iget-object p2, p0, Laym$15;->a:Laym;

    invoke-static {p2, v0, p1}, Laym;->b(Laym;ZLjava/lang/String;)V

    return-void
.end method
