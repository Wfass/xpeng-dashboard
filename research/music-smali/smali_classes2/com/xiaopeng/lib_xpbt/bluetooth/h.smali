.class public Lcom/xiaopeng/lib_xpbt/bluetooth/h;
.super Lapg;
.source "XPsnBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$b;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$f;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;
    }
.end annotation


# instance fields
.field c:Lanv;

.field d:Lanw;

.field e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lapg;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->e:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    .line 36
    invoke-static {p1}, Lanw;->a(Landroid/content/Context;)Lanw;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->d:Lanw;

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->d:Lanw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lanw;->a(Lanr;)Lanv;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->c:Lanv;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->c:Lanv;

    iget-object p1, p1, Lanv;->d:Lans;

    new-instance v1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    invoke-virtual {p1, v1}, Lans;->a(Lans$a;)V

    .line 45
    iget-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->f:Z

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->d:Lanw;

    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->c:Lanv;

    invoke-virtual {p1, p2}, Lanw;->a(Lanp;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->f:Z

    .line 49
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.FOUND"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 50
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.ACTION_STATE_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 51
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$g;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.DISCOVERY_STARTED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 52
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$f;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$f;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.DISCOVERY_FINISHED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 53
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$c;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.BOND_STATE_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 54
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$b;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$b;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.BOND_LIST_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 55
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h$d;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/h;Lcom/xiaopeng/lib_xpbt/bluetooth/h$1;)V

    const-string p2, "xiaopeng.bluetooth.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->a(Ljava/lang/String;Laph;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->g_()V

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

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/h;->c:Lanv;

    invoke-virtual {v0}, Lanv;->b()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 190
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
