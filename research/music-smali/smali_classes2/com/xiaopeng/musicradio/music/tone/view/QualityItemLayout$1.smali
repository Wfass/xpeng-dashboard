.class Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;
.super Ljava/lang/Object;
.source "QualityItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$000(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    check-cast p1, Lbjn;

    invoke-virtual {p1}, Lbjn;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)I

    move-result p1

    invoke-static {p1}, Lblk;->d(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$200(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    check-cast p1, Lbjn;

    invoke-virtual {p1}, Lbjn;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)I

    move-result p1

    invoke-static {p1}, Lblk;->e(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)I

    move-result p1

    invoke-static {p1}, Lblk;->c(I)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsi;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsi;

    if-eqz p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$300(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$400(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    check-cast p1, Lbjn;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lbjn;->a(I)V

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setSelected(Z)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->s()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbgs;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    invoke-static {p1, v0}, Lbrt;->a(Landroid/content/Context;I)V

    .line 135
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$500(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/music/tone/view/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->access$500(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/music/tone/view/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/tone/view/a;->a()V

    :cond_6
    :goto_2
    return-void
.end method
