.class public Lcom/xiaopeng/lib_xpbt/bluetooth/f;
.super Lapg;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$b;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$f;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$a;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;
    }
.end annotation


# instance fields
.field c:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

.field d:Lanw;

.field e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lapg;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    .line 35
    invoke-static {p1}, Lanw;->a(Landroid/content/Context;)Lanw;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->d:Lanw;

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->d:Lanw;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lanw;->getXPBluetoothControl(I)Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->c:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->c:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    iget-object p1, p1, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mConnection:Lcom/xiaopeng/btservice/base/AbstractConnection;

    new-instance v0, Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    invoke-virtual {p1, v0}, Lans;->a(Lans$a;)V

    .line 44
    iget-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->f:Z

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->d:Lanw;

    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->c:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {p1, p2}, Lanw;->a(Lanp;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->f:Z

    .line 48
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.FOUND"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 49
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$a;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.ACTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 50
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$g;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.DISCOVERY_STARTED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 51
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$f;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$f;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.DISCOVERY_FINISHED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 52
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$c;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.BOND_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 53
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$b;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$b;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string v0, "xiaopeng.bluetooth.action.BOND_LIST_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 54
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/f$d;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/f;Lcom/xiaopeng/lib_xpbt/bluetooth/f$1;)V

    const-string p2, "xiaopeng.bluetooth.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->a(Ljava/lang/String;Laph;)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->g_()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/f;->c:Lcom/xiaopeng/btservice/external/XPBluetoothControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->getConnectedDevice()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
