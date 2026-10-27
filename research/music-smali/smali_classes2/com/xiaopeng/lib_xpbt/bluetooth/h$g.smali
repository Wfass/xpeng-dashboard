.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;
.super Ljava/lang/Object;
.source "XPsnBluetoothManagerImpl.java"

# interfaces
.implements Laph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(I)V

    :cond_0
    return-void
.end method
