.class Lcom/android/car/media/common/source/a$a;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaBrowserConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/media/common/source/a;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/car/media/common/source/a;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 153
    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {p1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a;)I

    move-result p1

    iput p1, p0, Lcom/android/car/media/common/source/a$a;->b:I

    .line 154
    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {p1}, Lcom/android/car/media/common/source/a;->b(Lcom/android/car/media/common/source/a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/media/common/source/a$a;->c:Ljava/lang/String;

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New Callback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lahv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBrowserConnector"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/car/media/common/source/a$a;-><init>(Lcom/android/car/media/common/source/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 161
    iget v0, p0, Lcom/android/car/media/common/source/a$a;->b:I

    iget-object v1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {v1}, Lcom/android/car/media/common/source/a;->c(Lcom/android/car/media/common/source/a;)I

    move-result v1

    const-string v2, "MediaBrowserConnector"

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lahv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " seq: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/car/media/common/source/a$a;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    .line 164
    invoke-static {p1}, Lcom/android/car/media/common/source/a;->c(Lcom/android/car/media/common/source/a;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " package: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    .line 165
    invoke-static {p1}, Lcom/android/car/media/common/source/a;->b(Lcom/android/car/media/common/source/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    .line 167
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {p1}, Lcom/android/car/media/common/source/a;->b(Lcom/android/car/media/common/source/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mBrowser: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {p1}, Lcom/android/car/media/common/source/a;->d(Lcom/android/car/media/common/source/a;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p1

    invoke-static {p1}, Lahv;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "onConnected"

    .line 175
    invoke-direct {p0, v0}, Lcom/android/car/media/common/source/a$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {v0}, Lcom/android/car/media/common/source/a;->d(Lcom/android/car/media/common/source/a;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    invoke-static {v0}, Lcom/android/car/media/common/source/a;->d(Lcom/android/car/media/common/source/a;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    sget-object v1, Lcom/android/car/media/common/source/a$d;->CONNECTED:Lcom/android/car/media/common/source/a$d;

    invoke-static {v0, v1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$d;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    sget-object v1, Lcom/android/car/media/common/source/a$d;->REJECTED:Lcom/android/car/media/common/source/a$d;

    invoke-static {v0, v1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    const-string v0, "onConnectionFailed"

    .line 186
    invoke-direct {p0, v0}, Lcom/android/car/media/common/source/a$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    sget-object v1, Lcom/android/car/media/common/source/a$d;->REJECTED:Lcom/android/car/media/common/source/a$d;

    invoke-static {v0, v1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$d;)V

    :cond_0
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    const-string v0, "onConnectionSuspended"

    .line 193
    invoke-direct {p0, v0}, Lcom/android/car/media/common/source/a$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/car/media/common/source/a$a;->a:Lcom/android/car/media/common/source/a;

    sget-object v1, Lcom/android/car/media/common/source/a$d;->SUSPENDED:Lcom/android/car/media/common/source/a$d;

    invoke-static {v0, v1}, Lcom/android/car/media/common/source/a;->a(Lcom/android/car/media/common/source/a;Lcom/android/car/media/common/source/a$d;)V

    :cond_0
    return-void
.end method
