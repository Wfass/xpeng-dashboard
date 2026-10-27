.class Lbbu$3;
.super Ljava/lang/Object;
.source "MusicHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu;


# direct methods
.method constructor <init>(Lbbu;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lbbu$3;->a:Lbbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    invoke-virtual {v0}, Lazt;->b()Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 127
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 129
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Lbbu$3$1;

    invoke-direct {v2, p0, v1, v0}, Lbbu$3$1;-><init>(Lbbu$3;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
