.class Laym$5$1;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laym$5;


# direct methods
.method constructor <init>(Laym$5;)V
    .locals 0

    .line 791
    iput-object p1, p0, Laym$5$1;->a:Laym$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 794
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laym$5$1;->a:Laym$5;

    iget-object p1, p1, Laym$5;->b:Laym;

    invoke-virtual {p1}, Laym;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothMusicService"

    const-string v0, "play state is stopped, maybe there\'s no player running in the phone, just update playstate to pause and meta data to unknown singer & song"

    .line 795
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    iget-object p1, p0, Laym$5$1;->a:Laym$5;

    iget-object p1, p1, Laym$5;->b:Laym;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Laym;->b(Laym;Z)Z

    .line 798
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->bt_no_player_error:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 799
    new-instance p1, Lasa$d;

    invoke-direct {p1}, Lasa$d;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 791
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Laym$5$1;->a(Ljava/lang/Long;)V

    return-void
.end method
