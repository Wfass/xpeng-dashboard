.class public Lorg/chromium/net/NetworkChangeNotifier;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkChangeNotifier$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static g:Lorg/chromium/net/NetworkChangeNotifier;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/net/NetworkChangeNotifier$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/net/ConnectivityManager;

.field private e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifier;->a:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->f:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->c:Lorg/chromium/base/ObserverList;

    .line 57
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static a()Lorg/chromium/net/NetworkChangeNotifier;
    .locals 1

    .line 144
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifier;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->g:Lorg/chromium/net/NetworkChangeNotifier;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->g:Lorg/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method private a(IJ)V
    .locals 8

    .line 311
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    .line 312
    invoke-direct/range {v2 .. v7}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyConnectionTypeChanged(JIJ)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifier;->c:Lorg/chromium/base/ObserverList;

    invoke-virtual {p2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/net/NetworkChangeNotifier$a;

    .line 316
    invoke-interface {p3, p1}, Lorg/chromium/net/NetworkChangeNotifier$a;->a(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/chromium/net/NetworkChangeNotifier;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->c(I)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 158
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/r;

    invoke-direct {v1}, Lorg/chromium/net/r;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->a(ZLorg/chromium/net/NetworkChangeNotifierAutoDetect$f;)V

    return-void
.end method

.method private a(ZLorg/chromium/net/NetworkChangeNotifierAutoDetect$f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez p1, :cond_1

    .line 194
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v0, Lorg/chromium/net/NetworkChangeNotifier$1;

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier$1;-><init>(Lorg/chromium/net/NetworkChangeNotifier;)V

    invoke-direct {p1, v0, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$e;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$f;)V

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 222
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 223
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;->e()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/chromium/net/NetworkChangeNotifier;->c(I)V

    .line 225
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->b(I)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifier;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 3

    .line 171
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/q;

    invoke-direct {v1}, Lorg/chromium/net/q;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/chromium/net/NetworkChangeNotifier;->a(ZLorg/chromium/net/NetworkChangeNotifierAutoDetect$f;)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 246
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 249
    :goto_1
    invoke-direct {p0, v2}, Lorg/chromium/net/NetworkChangeNotifier;->c(I)V

    xor-int/2addr p1, v1

    .line 251
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->b(I)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->a()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 0

    .line 299
    iput p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->f:I

    .line 300
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)V

    return-void
.end method

.method private d()Z
    .locals 4

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 398
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcdy;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static fakeConnectionSubtypeChanged(I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 294
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 295
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->b(I)V

    return-void
.end method

.method public static fakeDefaultNetwork(JI)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 288
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p2, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(IJ)V

    return-void
.end method

.method public static fakeNetworkConnected(JI)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 260
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->a(JI)V

    return-void
.end method

.method public static fakeNetworkDisconnected(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 273
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 274
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->b(J)V

    return-void
.end method

.method public static fakeNetworkSoonToBeDisconnected(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 267
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(J)V

    return-void
.end method

.method public static fakePurgeActiveNetworkList([J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 280
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 281
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->a([J)V

    return-void
.end method

.method public static forceConnectivityState(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 242
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->b(Z)V

    return-void
.end method

.method public static init()Lorg/chromium/net/NetworkChangeNotifier;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 66
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->g:Lorg/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0}, Lorg/chromium/net/NetworkChangeNotifier;-><init>()V

    sput-object v0, Lorg/chromium/net/NetworkChangeNotifier;->g:Lorg/chromium/net/NetworkChangeNotifier;

    .line 69
    :cond_0
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->g:Lorg/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static isProcessBoundToNetwork()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 410
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0}, Lorg/chromium/net/NetworkChangeNotifier;->d()Z

    move-result v0

    return v0
.end method

.method private native nativeNotifyConnectionTypeChanged(JIJ)V
.end method

.method private native nativeNotifyMaxBandwidthChanged(JI)V
.end method

.method private native nativeNotifyOfNetworkConnect(JJI)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private native nativeNotifyOfNetworkSoonToDisconnect(JJ)V
.end method

.method private native nativeNotifyPurgeActiveNetworkList(J[J)V
.end method


# virtual methods
.method a(I)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentDefaultNetId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->a(IJ)V

    return-void
.end method

.method a(J)V
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 343
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyOfNetworkSoonToDisconnect(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(JI)V
    .locals 8

    .line 333
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyOfNetworkConnect(JJI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a([J)V
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 364
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyPurgeActiveNetworkList(J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addNativeObserver(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(I)V
    .locals 3

    .line 324
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 325
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyMaxBandwidthChanged(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(J)V
    .locals 3

    .line 351
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 352
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentConnectionSubtype()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->d()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$d;->f()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentConnectionType()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 82
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->f:I

    return v0
.end method

.method public getCurrentDefaultNetId()J
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getCurrentNetworksAndTypes()[J
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e()[J

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public registerNetworkCallbackFailed()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->g()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public removeNativeObserver(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
