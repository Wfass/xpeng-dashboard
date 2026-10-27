.class Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;
.super Ljava/lang/Object;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Laph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 2

    const/4 p1, -0x1

    const-string p3, "deviceId"

    .line 267
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deviceId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pass"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p3, p3, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p3, :cond_1

    const-string p3, "address"

    .line 273
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "name"

    .line 274
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Lapj;

    invoke-direct {v1}, Lapj;-><init>()V

    .line 276
    invoke-virtual {v1, p3}, Lapj;->a(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v0}, Lapj;->b(Ljava/lang/String;)V

    const-string p3, "prestate"

    .line 278
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "state"

    .line 279
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 280
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 v0, 0x0

    invoke-interface {p2, v1, p3, p1, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;III)V

    :cond_1
    return-void
.end method
