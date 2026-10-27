.class Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;
.super Ljava/lang/Object;
.source "XpPlayTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->f(I)V

    return-void
.end method
