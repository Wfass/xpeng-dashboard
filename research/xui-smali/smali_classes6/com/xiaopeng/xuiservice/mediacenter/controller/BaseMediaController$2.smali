.class Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;
.super Ljava/lang/Object;
.source "BaseMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->executeAsyncScreen(Ljava/lang/String;Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

.field final synthetic val$screenId:I

.field final synthetic val$sessionIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->val$sessionIntent:Landroid/app/PendingIntent;

    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->val$sessionIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    iget v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;->val$screenId:I

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 243
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
