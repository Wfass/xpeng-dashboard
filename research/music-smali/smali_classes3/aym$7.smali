.class Laym$7;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

.field final synthetic b:J

.field final synthetic c:Laym;


# direct methods
.method constructor <init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/i;J)V
    .locals 0

    .line 901
    iput-object p1, p0, Laym$7;->c:Laym;

    iput-object p2, p0, Laym$7;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iput-wide p3, p0, Laym$7;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 904
    iget-object v0, p0, Laym$7;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iget-wide v1, p0, Laym$7;->b:J

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(J)V

    return-void
.end method
