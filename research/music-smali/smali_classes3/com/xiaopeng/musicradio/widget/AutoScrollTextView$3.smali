.class Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;
.super Ljava/lang/Object;
.source "AutoScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->onVuiElementEvent(Landroid/view/View;Lbyf;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbyf;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;Lbyf;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->a:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->a:Lbyf;

    invoke-virtual {v0}, Lbyf;->getHitVuiElement()Lbye;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 211
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 212
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;->a(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;->b:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->access$000(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
