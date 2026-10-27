.class Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TestUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 102
    const-string p2, "mUsbBroadcastReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string p2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;ZZ)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/c;->onDestroy()V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->b(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->b(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/e;->onDestroy()V

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->c(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->c(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/a;->onDestroy()V

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;->Um:Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;

    invoke-static {p1, v0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;ZZ)V

    .line 116
    :cond_4
    :goto_1
    return-void
.end method
