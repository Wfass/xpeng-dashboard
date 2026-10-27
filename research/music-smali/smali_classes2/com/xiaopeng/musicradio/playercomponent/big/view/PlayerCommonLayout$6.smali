.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;
.super Ljava/lang/Object;
.source "PlayerCommonLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 151
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-static {p3, p2, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$500(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "PlayerCommonLayout"

    const-string v0, "onStartTrackingTouch: ======"

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$700(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a(II)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;Z)Z

    const-string p1, "PlayerCommonLayout"

    const-string v0, "onStopTrackingTouch: ======"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
