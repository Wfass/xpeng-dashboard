.class Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;
.super Ljava/lang/Object;
.source "BaseMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->startPackageByDisplay(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

.field final synthetic val$displayId:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$sessionIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$sessionIntent:Landroid/app/PendingIntent;

    iput p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$sessionIntent:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;->val$displayId:I

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 175
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 180
    return-void
.end method
