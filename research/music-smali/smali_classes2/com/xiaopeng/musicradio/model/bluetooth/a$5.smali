.class Lcom/xiaopeng/musicradio/model/bluetooth/a$5;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;->f(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;I)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Z
    .locals 4

    .line 864
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result p1

    const-string v0, "BluetoothMusicModel"

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 865
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const-string v2, "setStreamMode [%s] cancelled for disconnect, stop retry"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->h(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I

    move-result p1

    const/16 v2, 0xa

    if-le p1, v2, :cond_1

    const-string p1, "mSetStreamRetryTime > 10"

    .line 871
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 874
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->i(Lcom/xiaopeng/musicradio/model/bluetooth/a;)I

    .line 875
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->b:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->e(Lcom/xiaopeng/musicradio/model/bluetooth/a;)Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->a:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;->a(I)Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 861
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a$5;->a(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
