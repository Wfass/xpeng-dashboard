.class Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;
.super Ljava/lang/Object;
.source "ICMCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

.field final synthetic val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field final synthetic val$positions:[J

.field final synthetic val$status:I

.field final synthetic val$withImage:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$status:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$positions:[J

    iput-boolean p5, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$withImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$status:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$positions:[J

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator$1;->val$withImage:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;->sendIcmMediaInfoData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    .line 33
    return-void
.end method
