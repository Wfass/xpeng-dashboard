.class Lcom/xiaopeng/musicradio/model/bluetooth/k$2;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/model/bluetooth/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->c:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 208
    new-instance p1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k$2$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$2;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;->a(Ljava/lang/Long;)V

    return-void
.end method
