.class Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->onSetData(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Landroid/os/Bundle;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$7;->val$data:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/player/h$a;->onSetData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
