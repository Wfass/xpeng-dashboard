.class Lbbu$2;
.super Ljava/lang/Object;
.source "MusicHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Ljava/util/List;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lbbu$2;->b:Lbbu;

    iput-object p2, p0, Lbbu$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lbbu$2;->a:Ljava/util/List;

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

    .line 87
    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbal;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/model/music/i;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
