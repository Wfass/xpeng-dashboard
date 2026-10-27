.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 2

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    const-string p1, "address"

    .line 276
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p3, p1}, Lapj;->a(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    const-string v0, "prestate"

    .line 278
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "state"

    .line 279
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 280
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v1, 0x2

    invoke-interface {p2, p3, v0, p1, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;III)V

    :cond_0
    return-void
.end method
