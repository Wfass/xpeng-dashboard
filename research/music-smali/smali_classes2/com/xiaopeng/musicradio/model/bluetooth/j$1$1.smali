.class Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;
.super Ljava/lang/Object;
.source "PositionManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->run()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/j$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/j$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 5

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j;J)J

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b(Lcom/xiaopeng/musicradio/model/bluetooth/j;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;->a(Ljava/lang/Long;)V

    return-void
.end method
