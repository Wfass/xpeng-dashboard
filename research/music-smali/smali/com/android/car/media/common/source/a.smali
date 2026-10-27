.class public Lcom/android/car/media/common/source/a;
.super Ljava/lang/Object;
.source "MediaBrowserConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/media/common/source/a$a;,
        Lcom/android/car/media/common/source/a$c;,
        Lcom/android/car/media/common/source/a$b;,
        Lcom/android/car/media/common/source/a$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/car/media/common/source/a$c;

.field private final c:I

.field private d:Lcom/android/car/media/common/source/b;

.field private e:Landroid/support/v4/media/MediaBrowserCompat;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/media/common/source/a$c;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/android/car/media/common/source/a;->f:I

    .line 137
    iput-object p1, p0, Lcom/android/car/media/common/source/a;->a:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/car/media/common/source/a;->b:Lcom/android/car/media/common/source/a$c;

    .line 139
    iget-object p1, p0, Lcom/android/car/media/common/source/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/car/media/common/f$g;->media_items_bitmap_max_size_px:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/media/common/source/a;->c:I

    return-void
.end method

.method static synthetic a(Lcom/android/car/media/common/source/a;)I
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/car/media/common/source/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/media/common/source/a;->f:I

    return v0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/car/media/common/source/a;->d:Lcom/android/car/media/common/source/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/android/car/media/common/source/b;->b()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/car/media/common/source/a$d;)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/android/car/media/common/source/a;->d:Lcom/android/car/media/common/source/b;

    const-string v1, "MediaBrowserConnector"

    if-nez v0, :cond_0

    const-string p1, "sendNewState mMediaSource is null!"

    .line 201
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    if-nez v2, :cond_1

    const-string p1, "sendNewState mBrowser is null!"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/car/media/common/source/a;->b:Lcom/android/car/media/common/source/a$c;

    new-instance v3, Lcom/android/car/media/common/source/a$b;

    invoke-direct {v3, v0, v2, p1}, Lcom/android/car/media/common/source/a$b;-><init>(Lcom/android/car/media/common/source/b;Landroid/support/v4/media/MediaBrowserCompat;Lcom/android/car/media/common/source/a$d;)V

    invoke-interface {v1, v3}, Lcom/android/car/media/common/source/a$c;->onBrowserConnectionChanged(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$d;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a$d;)V

    return-void
.end method

.method static synthetic b(Lcom/android/car/media/common/source/a;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/car/media/common/source/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/car/media/common/source/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/car/media/common/source/a;->f:I

    return p0
.end method

.method static synthetic d(Lcom/android/car/media/common/source/a;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/android/car/media/common/source/b;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 3

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    iget v1, p0, Lcom/android/car/media/common/source/a;->c:I

    const-string v2, "android.media.extras.MEDIA_ART_SIZE_HINT_PIXELS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {p1}, Lcom/android/car/media/common/source/b;->b()Landroid/content/ComponentName;

    move-result-object p1

    .line 252
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v2, p0, Lcom/android/car/media/common/source/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public a(Lcom/android/car/media/common/source/b;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    const-string v1, " mBrowser: "

    const-string v2, "MediaBrowserConnector"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/media/common/source/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-static {v3}, Lahv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/android/car/media/common/source/a$d;->DISCONNECTING:Lcom/android/car/media/common/source/a$d;

    invoke-direct {p0, v0}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a$d;)V

    .line 222
    iget-object v0, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/android/car/media/common/source/a;->d:Lcom/android/car/media/common/source/b;

    .line 226
    iget-object p1, p0, Lcom/android/car/media/common/source/a;->d:Lcom/android/car/media/common/source/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 227
    new-instance v3, Lcom/android/car/media/common/source/a$a;

    invoke-direct {v3, p0, v0}, Lcom/android/car/media/common/source/a$a;-><init>(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$1;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/b;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connecting to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/media/common/source/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-static {v0}, Lahv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    sget-object p1, Lcom/android/car/media/common/source/a$d;->CONNECTING:Lcom/android/car/media/common/source/a$d;

    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a$d;)V

    .line 231
    iget-object p1, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object p1, Lcom/android/car/media/common/source/a$d;->SUSPENDED:Lcom/android/car/media/common/source/a$d;

    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a$d;)V

    goto :goto_0

    .line 241
    :cond_1
    iput-object v0, p0, Lcom/android/car/media/common/source/a;->e:Landroid/support/v4/media/MediaBrowserCompat;

    :goto_0
    return-void
.end method
