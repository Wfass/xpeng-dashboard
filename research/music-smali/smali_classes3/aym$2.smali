.class Laym$2;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

.field final synthetic b:Laym;


# direct methods
.method constructor <init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V
    .locals 0

    .line 513
    iput-object p1, p0, Laym$2;->b:Laym;

    iput-object p2, p0, Laym$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 516
    iget-object v0, p0, Laym$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iget-object v1, p0, Laym$2;->b:Laym;

    invoke-static {v1}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method
