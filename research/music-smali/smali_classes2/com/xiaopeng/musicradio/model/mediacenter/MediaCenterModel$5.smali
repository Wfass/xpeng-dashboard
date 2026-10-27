.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$5;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->registerListener()V
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

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$5;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtStatusChanged(I)V
    .locals 2

    .line 301
    new-instance v0, Lasa$e;

    invoke-direct {v0, p1}, Lasa$e;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post MediaCenterBtStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
