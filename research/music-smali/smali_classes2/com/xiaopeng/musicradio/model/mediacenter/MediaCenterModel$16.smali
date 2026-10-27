.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaCenterModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.xiaopeng.custom_switch_play_source"

    .line 1521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    const-string v0, "playSource"

    .line 1523
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    const/4 v1, 0x5

    if-eq p2, v1, :cond_3

    const/4 v1, 0x7

    if-eq p2, v1, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1541
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v0, 0x4

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1538
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p2, p1, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1535
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1544
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1526
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p2, v2, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1529
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p2, v1, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    goto :goto_0

    .line 1532
    :cond_6
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v0, 0x6

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 1416
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 4

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1462
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 3

    :try_start_0
    const-string v0, "MediaCenterModel"

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetPlaybackSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;F)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1486
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .line 1508
    invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result p1

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetRating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1514
    :cond_0
    invoke-static {}, Lazp;->a()Lazp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lazp;->a(I)Lazo;

    move-result-object v0

    invoke-interface {v0, p1}, Lazo;->a(Z)V

    :cond_1
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 2

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetRepeatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1494
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1496
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 2

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetShuffleMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 1443
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
