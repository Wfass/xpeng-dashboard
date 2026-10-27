.class Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$1;
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

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-static {}, Lblk;->a()V

    .line 99
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object p1

    const-string v0, "/player/player"

    invoke-virtual {p1, v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    const-string p1, "SmallPlayerLayout"

    const-string v0, "onClick: =========="

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
