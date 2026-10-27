.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0

    .line 2408
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2

    const-string v0, "MediaCenterManager"

    const-string v1, "mCompatibleListener OnMediaInfoNotify"

    .line 2430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 2432
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    .line 2433
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;->OnMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OnPlaybackChanged(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 2413
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    .line 2414
    invoke-interface {v0, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;->OnPlaybackChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OnUpdatePosition(IJJ)V
    .locals 1

    if-nez p1, :cond_0

    .line 2422
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    .line 2423
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;->OnUpdatePosition(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
