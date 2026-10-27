.class Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$3;
.super Ljava/lang/Object;
.source "SmallPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;->h()V

    return-void
.end method
