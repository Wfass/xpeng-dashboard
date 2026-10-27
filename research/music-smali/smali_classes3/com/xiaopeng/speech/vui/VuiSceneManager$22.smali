.class Lcom/xiaopeng/speech/vui/VuiSceneManager$22;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$finaldisplayLocation:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1954
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$finaldisplayLocation:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "VuiSceneManager"

    .line 1958
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "enterScene, success sceneId: "

    const-string v4, "packageVersion"

    const-string v5, "packageName"

    const-string v6, "sceneId"

    if-eqz v1, :cond_4

    .line 1967
    :try_start_1
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1970
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "processName"

    if-eqz v7, :cond_2

    .line 1971
    :try_start_2
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$finaldisplayLocation:Ljava/lang/String;

    .line 1972
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "primary"

    .line 1973
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v7, "LF"

    goto :goto_0

    :cond_0
    const-string v9, "secondary"

    .line 1975
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v7, "RF"

    .line 1980
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "enterDisplayLocationScene"

    .line 1981
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    .line 1982
    invoke-virtual {v9, v6, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v9, "displayLocation"

    .line 1983
    invoke-virtual {v6, v9, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$packageName:Ljava/lang/String;

    .line 1984
    invoke-virtual {v6, v5, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1985
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1986
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterScene, sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dispalyLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 1990
    :cond_2
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v9, "enterProcessScene"

    .line 1991
    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    .line 1992
    invoke-virtual {v7, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$packageName:Ljava/lang/String;

    .line 1993
    invoke-virtual {v6, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1994
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1995
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterScene: sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1999
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2000
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    .line 2002
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2004
    :cond_4
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 2005
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "enterScene"

    .line 2006
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    .line 2007
    invoke-virtual {v7, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$packageName:Ljava/lang/String;

    .line 2008
    invoke-virtual {v6, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 2009
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterScene, sceneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2012
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2013
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    .line 2015
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$22;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterScene--------------e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
