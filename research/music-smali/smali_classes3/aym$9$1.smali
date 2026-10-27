.class Laym$9$1;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

.field final synthetic b:Laym$9;


# direct methods
.method constructor <init>(Laym$9;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V
    .locals 0

    .line 992
    iput-object p1, p0, Laym$9$1;->b:Laym$9;

    iput-object p2, p0, Laym$9$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 995
    iget-object v0, p0, Laym$9$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iget-object v1, p0, Laym$9$1;->b:Laym$9;

    iget-object v1, v1, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method
