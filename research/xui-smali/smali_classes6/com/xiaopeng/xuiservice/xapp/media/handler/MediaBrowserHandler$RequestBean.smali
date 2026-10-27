.class Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;
.super Ljava/lang/Object;
.source "MediaBrowserHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestBean"
.end annotation


# instance fields
.field mCallback:Lcom/xiaopeng/xuiservice/xapp/media/Callback;

.field mCommand:Ljava/lang/String;

.field mScreenId:I

.field mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;
    .param p2, "screenId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->this$0:Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mScreenId:I

    .line 113
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mType:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCommand:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler$RequestBean;->mCallback:Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    .line 116
    return-void
.end method
