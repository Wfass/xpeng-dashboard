.class Layl$3;
.super Ljava/lang/Object;
.source "BluetoothJobs.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layl;->a(II)Lio/reactivex/disposables/Disposable;
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
.field final synthetic a:I

.field final synthetic b:Layl;


# direct methods
.method constructor <init>(Layl;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Layl$3;->b:Layl;

    iput p2, p0, Layl$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 5

    .line 77
    iget p1, p0, Layl$3;->a:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 78
    iget-object p1, p0, Layl$3;->b:Layl;

    invoke-static {p1}, Layl;->a(Layl;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 80
    iget-object p1, p0, Layl$3;->b:Layl;

    invoke-static {p1}, Layl;->b(Layl;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    .line 84
    iget-object v2, p0, Layl$3;->b:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Lcom/xiaopeng/musicradio/model/bluetooth/d;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 85
    iget-object v2, p0, Layl$3;->b:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Lcom/xiaopeng/musicradio/model/bluetooth/d;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->c()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/d;->a(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 87
    iget-object v2, p0, Layl$3;->b:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Lcom/xiaopeng/musicradio/model/bluetooth/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/d;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->d()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 89
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a(I)V

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_2
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 95
    new-instance p1, Layl$3$1;

    invoke-direct {p1, p0}, Layl$3$1;-><init>(Layl$3;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 109
    :cond_3
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Layl$3;->a(Ljava/lang/Long;)V

    return-void
.end method
