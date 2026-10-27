.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->OnSPlaybackControl(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$cmd:I

.field final synthetic val$param:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    .locals 0

    .line 1572
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$cmd:I

    iput p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$param:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$param:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$cmd:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$param:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;->val$param:I

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$2200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    :goto_0
    return-void
.end method
