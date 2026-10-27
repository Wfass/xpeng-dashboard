.class Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;
.super Ljava/lang/Object;
.source "MainSelectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->access$000(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->access$100(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;->a(I)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->access$200(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    return-void
.end method
