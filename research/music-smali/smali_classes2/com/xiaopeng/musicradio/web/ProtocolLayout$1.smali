.class Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;
.super Ljava/lang/Object;
.source "ProtocolLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$000(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    .line 138
    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$000(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$1;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->loadUrl()V

    :cond_1
    return-void
.end method
