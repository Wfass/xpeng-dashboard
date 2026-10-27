.class Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;
.super Ljava/lang/Object;
.source "MineMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;Ljava/lang/Integer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/c;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/c;->a(I)V

    :cond_0
    return-void
.end method
