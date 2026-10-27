.class Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 3

    const-string p1, "deviceId"

    const/4 v0, -0x1

    .line 304
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deviceId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pass"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_1

    const-string p1, "address"

    .line 310
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p3, p1}, Lapj;->a(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    const-string v1, "prestate"

    .line 312
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "state"

    .line 313
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 314
    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p2, p2, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-interface {p2, p3, v1, p1, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;III)V

    :cond_1
    return-void
.end method
