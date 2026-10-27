.class Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CrashFeedbackActivity.java"


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

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$1;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$1;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->a(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V

    .line 59
    return-void
.end method
