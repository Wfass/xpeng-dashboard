.class Laym$8;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->D()V
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
.field final synthetic a:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .line 962
    iput-object p1, p0, Laym$8;->a:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .line 965
    iget-object p1, p0, Laym$8;->a:Laym;

    invoke-virtual {p1}, Laym;->i()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Laym$8;->a:Laym;

    invoke-static {p1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 966
    iget-object p1, p0, Laym$8;->a:Laym;

    invoke-static {p1}, Laym;->o(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->c()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 962
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Laym$8;->a(Ljava/lang/Long;)V

    return-void
.end method
