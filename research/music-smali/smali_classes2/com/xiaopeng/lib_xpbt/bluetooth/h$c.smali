.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    const-string p1, "address"

    .line 249
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "name"

    .line 250
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 251
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 252
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p3}, Lapj;->b(Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p3, "prestate"

    .line 254
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v1, "state"

    .line 255
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 256
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v1, 0x0

    invoke-interface {p2, v0, p3, p1, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;III)V

    :cond_0
    return-void
.end method
