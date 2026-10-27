.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;
.super Ljava/lang/Object;
.source "SDMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->notifyListenerPlayStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

.field final synthetic val$newStatus:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->val$newStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->val$newStatus:I

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->val$newStatus:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)I

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;->val$newStatus:I

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onPlayStatusChanged(II)V

    .line 113
    :cond_0
    return-void
.end method
