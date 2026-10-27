.class Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$3;
.super Ljava/lang/Object;
.source "CrashFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$3;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$3;->CG:Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->finish()V

    .line 104
    return-void
.end method
