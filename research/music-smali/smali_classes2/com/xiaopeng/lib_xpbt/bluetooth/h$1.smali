.class Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;
.super Ljava/lang/Object;
.source "XPsnBluetoothManagerImpl.java"

# interfaces
.implements Lans$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/h;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

.field final synthetic b:Lcom/xiaopeng/lib_xpbt/bluetooth/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;->b:Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "init finish"

    .line 41
    invoke-static {v0}, Lapl;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;->a:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a()V

    return-void
.end method
