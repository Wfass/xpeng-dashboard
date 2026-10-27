.class public Lcom/xiaopeng/lib_xpbt/bluetooth/e;
.super Lapg;
.source "XBluetoothNFManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/b;
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;
    }
.end annotation


# instance fields
.field c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

.field d:Lant;

.field e:Lanw;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapj;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Lano;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lapg;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->g:Z

    .line 322
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;)V

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->h:Lano;

    .line 44
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    .line 45
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->e:Lanw;

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->e:Lanw;

    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->h:Lano;

    invoke-virtual {p1, p2}, Lanw;->a(Lano;)Lant;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->d:Lant;

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->e:Lanw;

    iget-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->d:Lant;

    invoke-virtual {p1, p2}, Lanw;->a(Lanp;)V

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->a(Lcom/xiaopeng/lib_xpbt/bluetooth/g;)V

    .line 49
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/e$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/e;Lcom/xiaopeng/lib_xpbt/bluetooth/e$1;)V

    const-string p2, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(Ljava/lang/String;Laph;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->g_()V

    return-void
.end method

.method private a(BLjava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x200

    return p1

    .line 256
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 p2, 0x1f00

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBluetoothCategory: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lapl;->a(Ljava/lang/String;)V

    return p1

    :cond_2
    return p2
.end method

.method static synthetic a(Lcom/xiaopeng/lib_xpbt/bluetooth/e;BLjava/lang/String;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->a(BLjava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0xa

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    .line 285
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->d:Lant;

    invoke-virtual {v1}, Lant;->c()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->d:Lant;

    invoke-virtual {v1}, Lant;->d()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapl;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lapj;ZI)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/e;->c:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;ZI)V

    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 1

    const/16 v0, 0x14b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14c

    if-eq p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    :goto_0
    return p1
.end method

.method public c(I)I
    .locals 1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
