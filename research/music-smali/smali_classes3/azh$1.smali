.class Lazh$1;
.super Ljava/lang/Object;
.source "AddSongsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazh;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

.field final synthetic c:Lazh;


# direct methods
.method constructor <init>(Lazh;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lazh$1;->c:Lazh;

    iput-object p2, p0, Lazh$1;->a:Ljava/util/List;

    iput-object p3, p0, Lazh$1;->b:Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 26
    iget-object v0, p0, Lazh$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    iget-object v2, p0, Lazh$1;->c:Lazh;

    invoke-virtual {v2}, Lazh;->a()Lbae;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAppend(Z)V

    .line 30
    iget-object v2, p0, Lazh$1;->c:Lazh;

    iget-object v3, p0, Lazh$1;->b:Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    invoke-virtual {v2, v3, v1}, Lazh;->a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 31
    iget-object v2, p0, Lazh$1;->c:Lazh;

    invoke-virtual {v2}, Lazh;->a()Lbae;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
