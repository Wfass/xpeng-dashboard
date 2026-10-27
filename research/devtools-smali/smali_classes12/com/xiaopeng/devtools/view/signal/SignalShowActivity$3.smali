.class Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;
.super Ljava/lang/Object;
.source "SignalShowActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)Lcom/xiaopeng/devtools/system/service/CollectionService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;->SC:Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)Lcom/xiaopeng/devtools/system/service/CollectionService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/system/service/CollectionService;->R(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object p1

    const-string v0, "k_s_d"

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/utils/q;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method
