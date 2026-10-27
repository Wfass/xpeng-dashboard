.class Lbsn$1;
.super Ljava/lang/Object;
.source "VipBuyingDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsn;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsn;


# direct methods
.method constructor <init>(Lbsn;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-static {p1}, Lbsn;->a(Lbsn;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-static {p1}, Lbsn;->b(Lbsn;)V

    .line 131
    iget-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-static {p1}, Lbsn;->c(Lbsn;)Lbsn$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbsn$a;->a(Ljava/lang/Boolean;)V

    .line 132
    iget-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-static {p1}, Lbsn;->c(Lbsn;)Lbsn$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbsn$a;->b(Ljava/lang/Boolean;)V

    .line 133
    iget-object p1, p0, Lbsn$1;->a:Lbsn;

    invoke-static {p1}, Lbsn;->d(Lbsn;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->f()V

    :cond_0
    return-void
.end method
