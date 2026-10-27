.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$4;
.super Ljava/lang/Object;
.source "MsRmLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$4;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbjp;->b(Landroid/content/Context;)V

    return-void
.end method
