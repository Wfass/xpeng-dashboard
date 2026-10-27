.class Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;
.super Landroid/database/ContentObserver;
.source "XAppCarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 222
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 225
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 226
    const-string v0, "XAppCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    const-string v1, "key_xp_mirror_flag"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->access$200(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    const-string v1, "key_xp_steering_flag"

    .line 228
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->access$200(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->access$300(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;)V

    .line 231
    :cond_1
    return-void
.end method
