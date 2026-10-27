.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$2;
.super Ljava/lang/Object;
.source "MsRmTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->e(I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->access$300(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbjp;->b(Landroid/content/Context;)V

    return-void
.end method
