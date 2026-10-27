.class Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;
.super Ljava/lang/Object;
.source "ProgramHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getDialogTopLayout()Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->restore()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
