.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->switchAudio(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$audioType:I

.field final synthetic val$subType:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    .locals 0

    .line 1554
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$audioType:I

    iput p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$subType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1557
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->b()V

    .line 1558
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$audioType:I

    if-nez v0, :cond_1

    .line 1559
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$subType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1560
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    invoke-interface {v0}, Lbfe;->switchUsbMusic()V

    goto :goto_0

    .line 1562
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$audioType:I

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$subType:I

    invoke-interface {v0, v1}, Laqt;->playSub(I)V

    goto :goto_0

    .line 1565
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;->val$audioType:I

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->play()V

    :goto_0
    return-void
.end method
