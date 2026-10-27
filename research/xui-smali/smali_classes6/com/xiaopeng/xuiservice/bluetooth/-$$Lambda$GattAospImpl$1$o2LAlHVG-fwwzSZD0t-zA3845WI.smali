.class public final synthetic Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$2:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;->f$2:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->lambda$onServiceConnected$0(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
