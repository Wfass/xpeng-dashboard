.class Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;
.super Ljava/lang/Object;
.source "XBluetoothManagerImpl.java"

# interfaces
.implements Laph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 2

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 442
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 444
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 446
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v1, 0x0

    invoke-interface {p2, p3, p1, v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;III)V

    :cond_0
    return-void
.end method
