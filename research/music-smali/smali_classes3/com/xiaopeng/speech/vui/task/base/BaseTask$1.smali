.class Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/task/base/BaseTask;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/task/base/BaseTask;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Ljava/lang/String;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;->this$0:Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1018
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/base/BaseTask$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
