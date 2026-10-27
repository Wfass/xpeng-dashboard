.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;
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

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;I)V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->reload()V

    return-void
.end method
