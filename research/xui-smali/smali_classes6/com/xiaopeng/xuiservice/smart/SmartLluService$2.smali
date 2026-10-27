.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$2;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "i"    # I

    .line 260
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 1
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;FF)V

    .line 266
    return-void
.end method
