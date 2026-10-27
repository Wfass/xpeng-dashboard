.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 384
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2600(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    invoke-static {}, Lbmx;->j()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Z)V

    if-eqz p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Z)V

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setMode(I)V

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$3000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2700(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method
