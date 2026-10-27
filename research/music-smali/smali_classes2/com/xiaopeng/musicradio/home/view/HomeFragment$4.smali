.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showAudioDownDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 884
    iget p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;->a:I

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->d()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 885
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->f()V

    goto :goto_0

    .line 887
    :cond_0
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->f()V

    .line 889
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$1102(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;

    return-void
.end method
