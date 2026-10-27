.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$7;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->configPlayerPending()V
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

    .line 611
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$7;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 615
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v2, "com.xiaopeng.musicradio.home.view.HomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAV_KEY"

    const-string v2, "NAV_VALUE_PLAYER"

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$7;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method
