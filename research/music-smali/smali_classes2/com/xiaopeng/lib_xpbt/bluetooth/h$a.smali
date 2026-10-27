.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string p3, "state"

    .line 217
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "prestate"

    .line 218
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v0, 0x2

    invoke-interface {p2, p1, p3, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(III)V

    :cond_0
    return-void
.end method
