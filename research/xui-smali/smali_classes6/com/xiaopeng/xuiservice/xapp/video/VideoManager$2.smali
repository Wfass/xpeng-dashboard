.class Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTopActivityChanged(ILcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 90
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 91
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    iget-object v1, p2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->access$102(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_0
    return-void
.end method
