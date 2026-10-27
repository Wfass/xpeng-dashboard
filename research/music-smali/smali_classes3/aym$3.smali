.class Laym$3;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Laym;


# direct methods
.method constructor <init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/h;IZ)V
    .locals 0

    .line 620
    iput-object p1, p0, Laym$3;->d:Laym;

    iput-object p2, p0, Laym$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

    iput p3, p0, Laym$3;->b:I

    iput-boolean p4, p0, Laym$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 623
    iget-object v0, p0, Laym$3;->a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

    iget v1, p0, Laym$3;->b:I

    iget-boolean v2, p0, Laym$3;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/h;->a(IZ)V

    return-void
.end method
