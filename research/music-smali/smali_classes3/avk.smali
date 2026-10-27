.class public abstract Lavk;
.super Landroidx/databinding/ViewDataBinding;
.source "MineNetradioItemLayoutBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 21
    iput-object p4, p0, Lavk;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;)Lavk;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_netradio_item_layout:I

    invoke-static {p1, p0, v0}, Lavk;->a(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lavk;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lavk;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/f;->a()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lavk;->a(Landroid/view/View;Ljava/lang/Object;)Lavk;

    move-result-object p0

    return-object p0
.end method
