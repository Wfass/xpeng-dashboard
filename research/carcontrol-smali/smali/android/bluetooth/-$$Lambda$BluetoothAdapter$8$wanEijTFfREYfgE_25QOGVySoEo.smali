.class public final synthetic Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    iput-object p2, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$0:Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    iget-object v1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$8;->lambda$onDeviceDisconnected$1(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
