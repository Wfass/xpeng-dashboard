.class Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;
.super Ljava/lang/Object;
.source "XuiVideoListViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->showResult(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$list:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;

    .line 66
    .local v0, "recorder":Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->refreshList(Ljava/util/List;)V

    goto :goto_0

    .line 68
    .end local v0    # "recorder":Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$list:Ljava/util/List;

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 69
    .restart local v0    # "recorder":Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;->show()V

    .line 72
    return-void

    .line 60
    .end local v0    # "recorder":Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$ScreenDialogRecorder;
    :cond_2
    :goto_1
    const-string v0, "XuiVideoListViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show Result with screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/XuiVideoListViewHolder$1;->val$screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " list is null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
