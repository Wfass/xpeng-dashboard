.class Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter$1;
.super Ljava/lang/Object;
.source "PlayerCommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->onCreate(Landroidx/lifecycle/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->h()V

    return-void
.end method
