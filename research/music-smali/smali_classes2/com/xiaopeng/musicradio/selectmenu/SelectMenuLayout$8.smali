.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->showTipDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;->b:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 437
    iget p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;->a:I

    .line 438
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->c()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 439
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p2

    invoke-virtual {p2}, Lbhg;->b()Lbhi;

    move-result-object p2

    invoke-virtual {p2}, Lbhi;->f()V

    .line 441
    :cond_0
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->d()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 442
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->f()V

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;->b:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$402(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;

    return-void
.end method
