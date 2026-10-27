.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;
.super Landroid/os/AsyncTask;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/musicradio/music/player/widget/LyricView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a()Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 1115
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a()Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1118
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->parseLrc(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 1123
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a()Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a()Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Ljava/util/ArrayList;)V

    .line 1128
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a()Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1105
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1105
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->a(Ljava/util/ArrayList;)V

    return-void
.end method
