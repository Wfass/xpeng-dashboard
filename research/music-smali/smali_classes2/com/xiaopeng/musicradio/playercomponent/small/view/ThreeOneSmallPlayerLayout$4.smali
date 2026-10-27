.class Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;
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

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 121
    :cond_0
    invoke-static {}, Lblk;->g()V

    return-void
.end method
