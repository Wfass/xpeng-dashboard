.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected recompute(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 1129
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1131
    :try_start_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1133
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    const-string p1, "BluetoothAdapter"

    const-string/jumbo v0, "recompute ,service is null"

    .line 1136
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 1137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1124
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$2;->recompute(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
