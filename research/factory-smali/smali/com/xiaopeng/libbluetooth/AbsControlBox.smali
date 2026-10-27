.class public abstract Lcom/xiaopeng/libbluetooth/AbsControlBox;
.super Ljava/lang/Object;
.source "AbsControlBox.java"


# instance fields
.field protected mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;-><init>(Lcom/xiaopeng/libbluetooth/AbsControlBox;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox;->mConnection:Lcom/xiaopeng/libbluetooth/AbstractConnection;

    return-void
.end method


# virtual methods
.method protected abstract clearService()V
.end method

.method protected abstract initService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
.end method

.method protected abstract onWorkDone()V
.end method

.method protected abstract release()V
.end method
