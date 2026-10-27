.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Lcom/xiaopeng/musicradio/widget/f;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 538
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 539
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    return-void
.end method
