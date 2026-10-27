.class Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$displayId:I

.field final synthetic val$handler:Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$handler:Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$displayId:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$command:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$handler:Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$displayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$command:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;->play(ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 128
    return-void
.end method
