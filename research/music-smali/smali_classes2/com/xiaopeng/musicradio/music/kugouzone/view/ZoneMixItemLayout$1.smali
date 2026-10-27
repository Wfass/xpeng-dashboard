.class Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout$1;
.super Ljava/lang/Object;
.source "ZoneMixItemLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->requestLayout()V

    return-void
.end method
