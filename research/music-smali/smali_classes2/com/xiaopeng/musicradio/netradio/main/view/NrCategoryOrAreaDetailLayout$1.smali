.class Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;
.super Ljava/lang/Object;
.source "NrCategoryOrAreaDetailLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Lbkd;

    move-result-object v0

    invoke-virtual {v0}, Lbkd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Lbkd;

    move-result-object v0

    invoke-virtual {v0}, Lbkd;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
