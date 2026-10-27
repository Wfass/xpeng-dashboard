.class public Lcom/xiaopeng/lib_xpbt/bluetooth/d;
.super Lcom/xiaopeng/lib_xpbt/bluetooth/c;
.source "XBluetoothManagerImplV34.java"


# instance fields
.field e:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/d;->e:Landroid/bluetooth/BluetoothAdapter;

    const-string p1, "XBluetoothManagerImplV34"

    const-string p2, "XBluetoothManagerImplV34..."

    .line 27
    invoke-static {p1, p2}, Lapk;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
