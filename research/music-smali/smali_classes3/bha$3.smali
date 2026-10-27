.class Lbha$3;
.super Ljava/lang/Object;
.source "DolbyZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbha;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

.field final synthetic b:Lbhf;

.field final synthetic c:Lbha;


# direct methods
.method constructor <init>(Lbha;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lbha$3;->c:Lbha;

    iput-object p2, p0, Lbha$3;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    iput-object p3, p0, Lbha$3;->b:Lbhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lbha$3;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbha$3;->b:Lbhf;

    invoke-virtual {v0}, Lbhf;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbha$3;->b:Lbhf;

    invoke-virtual {v1}, Lbhf;->e()I

    move-result v1

    invoke-static {p1, v0, v1}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
