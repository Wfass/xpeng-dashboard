.class Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$2;
.super Ljava/lang/Object;
.source "NrCategoryDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$2;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$2;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
