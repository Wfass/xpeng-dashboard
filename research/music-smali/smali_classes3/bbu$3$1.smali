.class Lbbu$3$1;
.super Ljava/lang/Object;
.source "MusicHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbbu$3;


# direct methods
.method constructor <init>(Lbbu$3;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lbbu$3$1;->c:Lbbu$3;

    iput-object p2, p0, Lbbu$3$1;->a:Ljava/util/List;

    iput-object p3, p0, Lbbu$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lbbu$3$1;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v4, p0, Lbbu$3$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Z)V

    return-void
.end method
