.class Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$1;
.super Ljava/lang/Object;
.source "NrCategoryDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;


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

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "NrCategoryDetailActivity"

    const-string v1, "loadSuccess: "

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;->access$000(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryDetailActivity;)V

    return-void
.end method
