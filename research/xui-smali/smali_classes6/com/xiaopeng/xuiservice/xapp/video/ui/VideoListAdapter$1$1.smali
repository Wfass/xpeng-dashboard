.class Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "xDialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "i"    # I

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->val$itemBean:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;->access$200(Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoListAdapter;Ljava/lang/String;I)V

    .line 86
    return-void
.end method
