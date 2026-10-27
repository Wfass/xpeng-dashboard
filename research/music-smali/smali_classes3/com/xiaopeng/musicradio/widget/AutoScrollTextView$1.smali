.class Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;
.super Ljava/lang/Object;
.source "AutoScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$008(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$000(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$100(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$002(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;I)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$100(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->next()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$100(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$000(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$400(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$200(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$300(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
