.class Lcom/xiaopeng/commonfunc/utils/FileUploader$1;
.super Landroid/content/BroadcastReceiver;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "FileUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "FileUploader"

    const-string v2, "onReceive mStep [%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$000(Lcom/xiaopeng/commonfunc/utils/FileUploader;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$000(Lcom/xiaopeng/commonfunc/utils/FileUploader;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v1, v5}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$002(Lcom/xiaopeng/commonfunc/utils/FileUploader;I)I

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$100(Lcom/xiaopeng/commonfunc/utils/FileUploader;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$200(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$1;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$300(Lcom/xiaopeng/commonfunc/utils/FileUploader;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->copyData2Udisk([Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    :cond_0
    return-void
.end method
