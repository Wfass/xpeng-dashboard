.class Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;
.super Ljava/lang/Object;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->setEnable(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iput-boolean p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->mExternalBluetoothControl:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    iget-boolean v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$2;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->enableDevice(Z)Z

    .line 71
    const-string v0, "setEnable finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 72
    return-void
.end method
