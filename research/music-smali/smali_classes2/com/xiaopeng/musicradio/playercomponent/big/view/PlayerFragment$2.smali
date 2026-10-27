.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$2;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->openDsp()V

    return-void
.end method
