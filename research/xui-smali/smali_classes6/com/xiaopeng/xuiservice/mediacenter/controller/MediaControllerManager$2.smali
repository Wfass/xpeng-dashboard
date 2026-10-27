.class Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$2;
.super Ljava/lang/Object;
.source "MediaControllerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTargetChanged([Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controllers"    # [Landroid/media/session/MediaController;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;[Landroid/media/session/MediaController;)V

    .line 238
    return-void
.end method
