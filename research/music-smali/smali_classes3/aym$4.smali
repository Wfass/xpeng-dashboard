.class Laym$4;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

.field final synthetic b:Z

.field final synthetic c:Laym;


# direct methods
.method constructor <init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/g;Z)V
    .locals 0

    .line 678
    iput-object p1, p0, Laym$4;->c:Laym;

    iput-object p2, p0, Laym$4;->a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

    iput-boolean p3, p0, Laym$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 681
    iget-object v0, p0, Laym$4;->a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

    iget-boolean v1, p0, Laym$4;->b:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/g;->a(Z)V

    return-void
.end method
