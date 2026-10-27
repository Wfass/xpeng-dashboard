.class Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->onBindViewHolder(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

.field final synthetic val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addPrivateFlags(I)Landroid/content/Intent;

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/screen/ScreenTaskManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->queryIsAssembling(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$200(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 79
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "xDialog":Lcom/xiaopeng/xui/app/XDialog;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 81
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 82
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 88
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    .line 89
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    const/16 v2, 0x7d8

    .line 90
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 92
    const-string v1, "ScreenDialogRecorderDownloadSysDialog"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    .line 95
    .end local v0    # "xDialog":Lcom/xiaopeng/xui/app/XDialog;
    :goto_1
    return-void
.end method
