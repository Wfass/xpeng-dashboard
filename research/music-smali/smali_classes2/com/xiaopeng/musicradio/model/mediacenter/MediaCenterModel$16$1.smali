.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;->onSetPlaybackSpeed(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;F)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1473
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1475
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1476
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1477
    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;->val$speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1479
    :cond_0
    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16$1;->val$speed:F

    invoke-interface {v0, v1}, Laqt;->a(F)V

    :cond_1
    return-void
.end method
