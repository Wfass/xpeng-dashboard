.class Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;
.super Ljava/lang/Object;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

.field final synthetic val$xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;->val$xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectServiceCompleted()V
    .locals 1

    .line 40
    const-string v0, "init finish"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;->val$xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onReady()V

    .line 42
    return-void
.end method
