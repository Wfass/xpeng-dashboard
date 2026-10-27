.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

.field private final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$AOqwNtVNdRl2DE05Vl9duJHePTo;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->lambda$onReceive$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
