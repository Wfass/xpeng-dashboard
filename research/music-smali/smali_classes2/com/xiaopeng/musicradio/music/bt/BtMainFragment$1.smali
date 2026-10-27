.class Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$1;
.super Ljava/lang/Object;
.source "BtMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/bt/BtMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/bt/presenter/BtMainPresenter;->g()V

    return-void
.end method
