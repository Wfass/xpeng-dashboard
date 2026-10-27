.class Layq$4;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Layq;


# direct methods
.method constructor <init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 440
    iput-object p1, p0, Layq$4;->b:Layq;

    iput-object p2, p0, Layq$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 443
    iget-object p1, p0, Layq$4;->b:Layq;

    invoke-virtual {p1}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMusicAuth: ============= "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p1, p0, Layq$4;->b:Layq;

    iget-object v0, p0, Layq$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return v1
.end method
