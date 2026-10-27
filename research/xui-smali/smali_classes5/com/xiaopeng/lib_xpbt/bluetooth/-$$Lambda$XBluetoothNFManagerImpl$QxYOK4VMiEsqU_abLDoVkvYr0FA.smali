.class public final synthetic Lcom/xiaopeng/lib_xpbt/bluetooth/-$$Lambda$XBluetoothNFManagerImpl$QxYOK4VMiEsqU_abLDoVkvYr0FA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/-$$Lambda$XBluetoothNFManagerImpl$QxYOK4VMiEsqU_abLDoVkvYr0FA;->f$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/-$$Lambda$XBluetoothNFManagerImpl$QxYOK4VMiEsqU_abLDoVkvYr0FA;->f$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->lambda$getPairedDevices$0(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V

    return-void
.end method
