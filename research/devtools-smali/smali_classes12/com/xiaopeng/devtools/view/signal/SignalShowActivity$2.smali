.class Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;
.super Ljava/lang/Object;
.source "SignalShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->ff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)Lcom/xiaopeng/devtools/system/service/CollectionService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)Lcom/xiaopeng/devtools/system/service/CollectionService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/system/service/CollectionService;->kO()V

    .line 73
    :cond_0
    return-void
.end method
