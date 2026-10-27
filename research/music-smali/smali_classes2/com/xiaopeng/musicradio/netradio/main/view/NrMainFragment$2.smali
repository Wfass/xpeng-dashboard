.class Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$2;
.super Ljava/lang/Object;
.source "NrMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$2;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$2;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->openSearch()V

    return-void
.end method
