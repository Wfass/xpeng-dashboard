.class Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;
.super Landroid/os/Handler;
.source "XAppHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppHalService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppHalService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method
