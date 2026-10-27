.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 792
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v0

    const-string v1, "unsubscribe e:"

    const-string v2, "VuiSceneToolManager"

    const-string v3, "packageVersion"

    const-string v4, "packageName"

    const-string v5, "observer"

    if-eqz v0, :cond_0

    .line 793
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 794
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "unsubscribeProcess"

    .line 795
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 796
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 797
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 798
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 799
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "processName"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 803
    :try_start_0
    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 810
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v6, "unsubscribe"

    .line 811
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 812
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 813
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 814
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 818
    :try_start_1
    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
