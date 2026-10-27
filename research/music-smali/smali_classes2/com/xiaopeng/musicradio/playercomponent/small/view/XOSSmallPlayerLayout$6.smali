.class Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$6;
.super Ljava/lang/Object;
.source "XOSSmallPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->infalteToSmall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$6;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$700(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->j()V

    return-void
.end method
