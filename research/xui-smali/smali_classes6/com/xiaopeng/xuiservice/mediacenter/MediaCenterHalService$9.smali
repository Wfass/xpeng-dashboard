.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$9;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;


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

    .line 738
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$9;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundComplete(IJ)V
    .locals 1
    .param p1, "soundId"    # I
    .param p2, "duration"    # J

    .line 741
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$9;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$1100(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    .line 742
    return-void
.end method
