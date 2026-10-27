.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$1;
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

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->i()V

    return-void
.end method
