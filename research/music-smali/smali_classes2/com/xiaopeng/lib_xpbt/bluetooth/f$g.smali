.class Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;
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
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 0

    const-string p1, "deviceId"

    const/4 p3, -0x1

    .line 237
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 239
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

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(I)V

    :cond_1
    return-void
.end method
