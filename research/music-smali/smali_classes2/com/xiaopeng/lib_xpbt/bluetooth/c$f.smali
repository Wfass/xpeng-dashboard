.class Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V
    .locals 0

    .line 427
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 0

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(I)V

    :cond_0
    return-void
.end method
