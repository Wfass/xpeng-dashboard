.class Lazi$1;
.super Ljava/lang/Object;
.source "DeleteSongsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazi;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lazi;


# direct methods
.method constructor <init>(Lazi;Ljava/util/List;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lazi$1;->b:Lazi;

    iput-object p2, p0, Lazi$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 24
    iget-object v0, p0, Lazi$1;->a:Ljava/util/List;

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

    .line 25
    iget-object v2, p0, Lazi$1;->b:Lazi;

    invoke-virtual {v2}, Lazi;->a()Lbae;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAppend(Z)V

    .line 28
    iget-object v2, p0, Lazi$1;->b:Lazi;

    invoke-virtual {v2}, Lazi;->a()Lbae;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
