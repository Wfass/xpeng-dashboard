.class Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;
.super Ljava/lang/Object;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "NewPlayerCommonLayout"

    const-string v1, "onClick love: ======"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
