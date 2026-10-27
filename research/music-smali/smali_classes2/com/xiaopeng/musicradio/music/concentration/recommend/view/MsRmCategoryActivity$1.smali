.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$1;
.super Ljava/lang/Object;
.source "MsRmCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
