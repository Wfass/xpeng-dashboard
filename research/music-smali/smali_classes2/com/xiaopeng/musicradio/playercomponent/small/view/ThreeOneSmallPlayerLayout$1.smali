.class Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;
.super Ljava/lang/Object;
.source "ThreeOneSmallPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->access$000(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->access$000(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
