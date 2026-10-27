.class Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->notifyTargetChanged([Landroid/media/session/MediaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

.field final synthetic val$targetControllers:[Landroid/media/session/MediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;[Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 312
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;->val$targetControllers:[Landroid/media/session/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$2;->val$targetControllers:[Landroid/media/session/MediaController;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;[Landroid/media/session/MediaController;)V

    .line 316
    return-void
.end method
