.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$duration:J

.field final synthetic val$favor:I

.field final synthetic val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field final synthetic val$isDolby:Z

.field final synthetic val$logoUri:Ljava/lang/String;

.field final synthetic val$lrc:Ljava/lang/String;

.field final synthetic val$nextInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

.field final synthetic val$preInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

.field final synthetic val$source:I

.field final synthetic val$style:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;JLcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$isDolby:Z

    iput-object p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$album:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$artist:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$logoUri:Ljava/lang/String;

    iput p7, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$favor:I

    iput p8, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$source:I

    iput-object p9, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$style:Ljava/lang/String;

    iput-object p10, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iput-object p11, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$lrc:Ljava/lang/String;

    iput-wide p12, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$duration:J

    iput-object p14, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$preInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    iput-object p15, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$nextInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "MediaCenterModel"

    const/4 v1, 0x1

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "vendorMediaInfoNotify run: "

    .line 488
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 491
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$600(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lask;->a()Lask;

    move-result-object v3

    invoke-virtual {v3}, Lask;->l()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_1

    .line 492
    invoke-static {}, Lask;->a()Lask;

    move-result-object v3

    invoke-virtual {v3}, Lask;->l()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$isDolby:Z

    if-eqz v3, :cond_4

    :cond_1
    const-string v2, "Do vendor MediaInfo\uff1a title: %s, album: %s, artist: %s, logoUri: %s, isFavor: %s, source: %s, style = %s"

    const/4 v3, 0x7

    .line 493
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$title:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$album:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$artist:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$logoUri:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$favor:I

    .line 495
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    iget v6, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$source:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$style:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 493
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$702(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 497
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$lrc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$802(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    const/4 v2, 0x0

    .line 501
    iget v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$source:I

    if-eq v3, v1, :cond_2

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$source:I

    if-eq v1, v5, :cond_2

    .line 502
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$lrc:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 504
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 506
    :goto_1
    new-instance v2, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;Ljava/lang/String;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 513
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore send media info as in unqualified condition is Xp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " focusType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-static {}, Lask;->a()Lask;

    move-result-object v2

    invoke-virtual {v2}, Lask;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "vendorMediaInfoNotify run2: "

    .line 517
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
