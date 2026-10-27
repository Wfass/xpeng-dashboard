.class Lbci$3;
.super Ljava/lang/Object;
.source "LocalLoveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lbci;


# direct methods
.method constructor <init>(Lbci;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lbci$3;->c:Lbci;

    iput-boolean p2, p0, Lbci$3;->a:Z

    iput-object p3, p0, Lbci$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lbci$3;->a:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lbci$3;->c:Lbci;

    invoke-static {v0}, Lbci;->b(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lbci$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    iget-object v0, p0, Lbci$3;->c:Lbci;

    iget-object v1, p0, Lbci$3;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1}, Lbci;->a(Lbci;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
