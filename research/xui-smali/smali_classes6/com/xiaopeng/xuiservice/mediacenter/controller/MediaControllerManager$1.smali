.class Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;
.super Ljava/lang/Object;
.source "MediaControllerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControl(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

.field final synthetic val$displayId:I

.field final synthetic val$params:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->val$displayId:I

    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->val$params:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->val$displayId:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;->val$params:I

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControlInner(III)Z

    .line 165
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 170
    return-void
.end method
