.class Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;
.super Ljava/lang/Object;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->makeView()Landroid/view/View;
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

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;->a:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$000(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;->a(I)V

    :cond_0
    return-void
.end method
