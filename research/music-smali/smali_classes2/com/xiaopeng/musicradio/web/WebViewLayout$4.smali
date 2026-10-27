.class Lcom/xiaopeng/musicradio/web/WebViewLayout$4;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;->setupTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$4;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 371
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$4;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$800(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout$4;->a(Ljava/lang/Long;)V

    return-void
.end method
