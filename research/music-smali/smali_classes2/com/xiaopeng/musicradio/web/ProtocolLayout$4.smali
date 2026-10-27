.class Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;
.super Ljava/lang/Object;
.source "ProtocolLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/ProtocolLayout;->onLoadingFinished(Z)V
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

    .line 353
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$600(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Landroid/webkit/WebView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$4;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$800(Lcom/xiaopeng/musicradio/web/ProtocolLayout;I)V

    return-void
.end method
