.class Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;
.super Ljava/lang/Object;
.source "AdasCollectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->onEvent(Lcom/xiaopeng/devtools/bean/event/FileEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->c(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->c(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method
