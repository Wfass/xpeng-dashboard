.class Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;
.super Ljava/lang/Object;
.source "SmartAvmManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->initSmartAvmManager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;->this$0:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewCallBack([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;->this$0:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->access$000(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;->this$0:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->access$100(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;[BLandroid/hardware/Camera;)V

    .line 63
    nop

    .line 67
    :goto_0
    return-void
.end method
