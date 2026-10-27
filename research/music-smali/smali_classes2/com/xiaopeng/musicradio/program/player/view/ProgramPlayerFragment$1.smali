.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment$1;
.super Ljava/lang/Object;
.source "ProgramPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-static {}, Lblk;->b()V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;->i()V

    return-void
.end method
