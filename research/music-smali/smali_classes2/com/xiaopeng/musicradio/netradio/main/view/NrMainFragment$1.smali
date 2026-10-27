.class Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;
.super Ljava/lang/Object;
.source "NrMainFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->access$000(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->openSearch()V

    :cond_0
    return-void
.end method
