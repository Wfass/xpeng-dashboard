.class public Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHandler;
.super Landroid/os/Handler;
.source "MediaCenterHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaCenterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 708
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHandler;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 709
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 710
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 714
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 715
    return-void
.end method
