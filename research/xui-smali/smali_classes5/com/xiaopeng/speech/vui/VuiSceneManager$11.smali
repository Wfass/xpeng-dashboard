.class Lcom/xiaopeng/speech/vui/VuiSceneManager$11;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1002
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1005
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1007
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "unsubscribeProcess"

    .line 1008
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "observer"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1009
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1010
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageVersion"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1011
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1012
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1016
    .local v0, "targetUrl":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    goto :goto_0

    .line 1017
    :catch_0
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1019
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsubscribe e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    .end local v0    # "targetUrl":Landroid/net/Uri;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1022
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1023
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "unsubscribe"

    .line 1024
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "observer"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1025
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1026
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageVersion"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$11;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1027
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1031
    .restart local v0    # "targetUrl":Landroid/net/Uri;
    :try_start_1
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1035
    goto :goto_1

    .line 1032
    :catch_1
    move-exception v1

    .line 1033
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1034
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsubscribe e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    .end local v0    # "targetUrl":Landroid/net/Uri;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
