.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    const-string p1, "address"

    .line 200
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "name"

    .line 201
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    const-string v1, "category"

    .line 202
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 203
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 204
    invoke-virtual {v0, p1}, Lapj;->a(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p3}, Lapj;->b(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lapj;->a(I)V

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 p2, 0x2

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;I)V

    :cond_0
    return-void
.end method
