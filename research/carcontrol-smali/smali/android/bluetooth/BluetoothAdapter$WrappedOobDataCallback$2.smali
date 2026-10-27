.class Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;I)V
    .locals 0

    .line 3576
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;->this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3578
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;->this$1:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->access$1300(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;)Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$2;->val$errorCode:I

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onError(I)V

    return-void
.end method
