.class Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;
.super Ljava/lang/Object;
.source "CrashFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->b(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->a(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;Ljava/lang/String;)Z

    move-result p1

    .line 67
    if-eqz p1, :cond_0

    const p1, 0x7f1000f2

    goto :goto_0

    .line 68
    :cond_0
    const p1, 0x7f1000f1

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    .line 70
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 69
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 72
    const/4 p1, 0x1

    return p1
.end method
