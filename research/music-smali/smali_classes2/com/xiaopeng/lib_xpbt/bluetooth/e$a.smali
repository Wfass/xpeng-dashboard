.class Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;
.super Ljava/lang/Object;
.source "XBluetoothNFManagerImpl.java"

# interfaces
.implements Laph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object p1, p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->b(Lapj;I)V

    :cond_0
    return-void
.end method
