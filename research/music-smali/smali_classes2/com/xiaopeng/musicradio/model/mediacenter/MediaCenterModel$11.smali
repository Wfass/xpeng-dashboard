.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$duration:J

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;JJ)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput-wide p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$position:J

    iput-wide p4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$position:J

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$duration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorUpdatePosition(JJ)V

    return-void

    .line 761
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$position:J

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorUpdatePosition(JJ)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$position:J

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$duration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorUpdatePosition(JJ)V

    .line 766
    :goto_0
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    invoke-interface {v0}, Laqs;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MediaCenterModel"

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do vendor UpdatePosition after meditation .. position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$position:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;->val$duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
