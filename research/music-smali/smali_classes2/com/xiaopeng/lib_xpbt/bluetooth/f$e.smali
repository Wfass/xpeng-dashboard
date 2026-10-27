.class Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 3

    const/4 p1, -0x1

    const-string p3, "deviceId"

    .line 198
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 200
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

    .line 203
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p3, p3, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p3, :cond_1

    const-string p3, "address"

    .line 204
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "name"

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    .line 206
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 207
    new-instance p2, Lapj;

    invoke-direct {p2}, Lapj;-><init>()V

    .line 208
    invoke-virtual {p2, p3}, Lapj;->a(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2, v1}, Lapj;->b(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2, p1}, Lapj;->a(I)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;I)V

    :cond_1
    return-void
.end method
