.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$8;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 731
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->onClientDead(II)V

    .line 735
    return-void
.end method
