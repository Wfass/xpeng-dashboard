.class Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$5;
.super Ljava/lang/Object;
.source "XOSSmallPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$5;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$5;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$1300(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->j()V

    return-void
.end method
