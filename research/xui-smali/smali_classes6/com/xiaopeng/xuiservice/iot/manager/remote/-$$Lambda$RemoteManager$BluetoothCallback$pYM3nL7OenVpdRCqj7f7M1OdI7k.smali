.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$BluetoothCallback$pYM3nL7OenVpdRCqj7f7M1OdI7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$BluetoothCallback$pYM3nL7OenVpdRCqj7f7M1OdI7k;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$BluetoothCallback$pYM3nL7OenVpdRCqj7f7M1OdI7k;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;->lambda$onServicesDiscovered$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$BluetoothCallback;)V

    return-void
.end method
