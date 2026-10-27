.class Lcom/xiaopeng/musicradio/usb/model/b$3;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/model/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "UsbMusicModel"

    const-string v1, "ExternalStorageMgr onDetached: "

    .line 168
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;I)V

    .line 170
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->f(Lcom/xiaopeng/musicradio/usb/model/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lbql;->b(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->f(Lcom/xiaopeng/musicradio/usb/model/b;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lbql;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalStorageMgr onMounted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/usb/model/b;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/usb/model/b;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/usb/model/b$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/model/b$3$1;-><init>(Lcom/xiaopeng/musicradio/usb/model/b$3;)V

    .line 144
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 143
    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalStorageMgr onAttached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "UsbMusicModel"

    const-string v1, "ExternalStorageMgr onUnMountable: "

    .line 161
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->d(Lcom/xiaopeng/musicradio/usb/model/b;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->e(Lcom/xiaopeng/musicradio/usb/model/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalStorageMgr onUnmounted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/b;->d(Lcom/xiaopeng/musicradio/usb/model/b;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b$3;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/lang/String;)V

    return-void
.end method
