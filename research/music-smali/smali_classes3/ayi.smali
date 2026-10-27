.class public Layi;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layi$f;,
        Layi$i;,
        Layi$j;,
        Layi$b;,
        Layi$d;,
        Layi$a;,
        Layi$c;,
        Layi$g;,
        Layi$e;,
        Layi$h;,
        Layi$k;
    }
.end annotation


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Layi$h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/Context;

.field private e:Layk;

.field private f:Landroid/bluetooth/BluetoothDevice;

.field private g:Landroid/bluetooth/BluetoothDevice;

.field private h:Landroid/bluetooth/BluetoothDevice;

.field private i:Landroid/bluetooth/BluetoothA2dpSink;

.field private j:I

.field private k:Landroid/bluetooth/BluetoothAvrcpController;

.field private l:Lcom/xiaopeng/lib_xpbt/bluetooth/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Layi$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Layi$e;-><init>(Layi;Layi$1;)V

    iput-object v0, p0, Layi;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Layi;I)I
    .locals 0

    .line 37
    iput p1, p0, Layi;->j:I

    return p1
.end method

.method static synthetic a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->i:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic a(Layi;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 37
    iput-object p1, p0, Layi;->i:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic a(Layi;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    .line 37
    iput-object p1, p0, Layi;->k:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic a(Layi;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 37
    iput-object p1, p0, Layi;->g:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method public static a()Layi;
    .locals 1

    .line 60
    sget-object v0, Layi$k;->a:Layi;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 227
    invoke-static {}, Lapi;->a()Lapi;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Lapi;->a(Landroid/content/Context;)V

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothEventManager initBlueTootSDK adapter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance p1, Layi$4;

    invoke-direct {p1, p0}, Layi$4;-><init>(Layi;)V

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lapi;->a(Lcom/xiaopeng/lib_xpbt/bluetooth/a;I)Lcom/xiaopeng/lib_xpbt/bluetooth/b;

    move-result-object p1

    iput-object p1, p0, Layi;->l:Lcom/xiaopeng/lib_xpbt/bluetooth/b;

    return-void
.end method

.method static synthetic a(Layi;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Layi;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Layi;->e:Layk;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Layk;->b(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Layi;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 37
    iput-object p1, p0, Layi;->h:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic b(Layi;)Layk;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->e:Layk;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 249
    iget-object v0, p0, Layi;->l:Lcom/xiaopeng/lib_xpbt/bluetooth/b;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothEventManager initBlueTootSDK connectedAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 255
    invoke-direct {p0, v0}, Layi;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Layi;->a(Z)V

    :goto_0
    return-void
.end method

.method static synthetic c(Layi;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 37
    iput-object p1, p0, Layi;->f:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic c(Layi;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Layi;->b()V

    return-void
.end method

.method static synthetic d(Layi;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Layi;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->f:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic f(Layi;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->h:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic g(Layi;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    .line 37
    iget-object p0, p0, Layi;->k:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/16 v0, 0x8c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public a(Landroid/content/Context;Layk;)V
    .locals 3

    .line 76
    iput-object p1, p0, Layi;->d:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Layi;->e:Layk;

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Layi;->d:Landroid/content/Context;

    new-instance v1, Layi$1;

    invoke-direct {v1, p0}, Layi$1;-><init>(Layi;)V

    const/16 v2, 0xb

    invoke-virtual {p2, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 121
    iget-object v0, p0, Layi;->d:Landroid/content/Context;

    new-instance v1, Layi$2;

    invoke-direct {v1, p0}, Layi$2;-><init>(Layi;)V

    const/16 v2, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 155
    iget-object v0, p0, Layi;->d:Landroid/content/Context;

    new-instance v1, Layi$3;

    invoke-direct {v1, p0}, Layi$3;-><init>(Layi;)V

    const/16 v2, 0x10

    invoke-virtual {p2, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Layi;->a(Landroid/content/Context;)V

    .line 192
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Layi;->b:Ljava/util/Map;

    .line 193
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Layi;->a:Landroid/content/IntentFilter;

    .line 195
    new-instance p1, Layi$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Layi$c;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 196
    new-instance p1, Layi$g;

    invoke-direct {p1, p0, p2}, Layi$g;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 198
    invoke-virtual {p0, p1}, Layi;->a(Ljava/lang/String;)V

    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 199
    invoke-virtual {p0, p1}, Layi;->a(Ljava/lang/String;)V

    const-string p1, "android.bluetooth.device.action.FOUND"

    .line 200
    invoke-virtual {p0, p1}, Layi;->a(Ljava/lang/String;)V

    const-string p1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 201
    invoke-virtual {p0, p1}, Layi;->a(Ljava/lang/String;)V

    .line 202
    new-instance p1, Layi$j;

    invoke-direct {p1, p0, p2}, Layi$j;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 204
    new-instance p1, Layi$f;

    invoke-direct {p1, p0, p2}, Layi$f;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 205
    new-instance p1, Layi$i;

    invoke-direct {p1, p0, p2}, Layi$i;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    const-string p1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    .line 206
    invoke-virtual {p0, p1}, Layi;->a(Ljava/lang/String;)V

    .line 207
    new-instance p1, Layi$a;

    invoke-direct {p1, p0, p2}, Layi$a;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 209
    new-instance p1, Layi$d;

    invoke-direct {p1, p0, p2}, Layi$d;-><init>(Layi;Layi$1;)V

    const-string v0, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 211
    new-instance p1, Layi$b;

    invoke-direct {p1, p0, p2}, Layi$b;-><init>(Layi;Layi$1;)V

    const-string p2, "android.bluetooth.a2dp-sink.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p0, p2, p1}, Layi;->a(Ljava/lang/String;Layi$h;)V

    .line 212
    iget-object p1, p0, Layi;->d:Landroid/content/Context;

    iget-object p2, p0, Layi;->c:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Layi;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object v0, p0, Layi;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Layi$h;)V
    .locals 1

    .line 216
    iget-object v0, p0, Layi;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p2, p0, Layi;->a:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
