.class Lcom/xiaopeng/musicradio/model/car/c$1;
.super Ljava/lang/Object;
.source "MusicCarManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/car/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/car/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/car/c;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/car/c$1;->a:Lcom/xiaopeng/musicradio/model/car/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MusicCarManager"

    const-string p2, "onServiceConnected: "

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/car/c$1;->a:Lcom/xiaopeng/musicradio/model/car/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/model/car/c;->a(Lcom/xiaopeng/musicradio/model/car/c;Z)Z

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/car/c$1;->a:Lcom/xiaopeng/musicradio/model/car/c;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/car/c;->a(Lcom/xiaopeng/musicradio/model/car/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/model/car/c$a;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c$1;->a:Lcom/xiaopeng/musicradio/model/car/c;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/car/c;->b(Lcom/xiaopeng/musicradio/model/car/c;)Landroid/car/Car;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/model/car/c$a;->a(Landroid/car/Car;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MusicCarManager"

    const-string v0, "onServiceDisconnected: "

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/car/c$1;->a:Lcom/xiaopeng/musicradio/model/car/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/car/c;->a(Lcom/xiaopeng/musicradio/model/car/c;Z)Z

    return-void
.end method
