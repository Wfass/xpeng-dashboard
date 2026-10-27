.class Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 397
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "subScreenUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$302(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Ljava/util/List;)Ljava/util/List;

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    .line 405
    :cond_0
    return-void
.end method
