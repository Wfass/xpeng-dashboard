.class public abstract Lavm;
.super Landroidx/databinding/ViewDataBinding;
.source "MineProgramItemLayoutBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field public final d:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 25
    iput-object p4, p0, Lavm;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 26
    iput-object p5, p0, Lavm;->d:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;)Lavm;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_program_item_layout:I

    invoke-static {p1, p0, v0}, Lavm;->a(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lavm;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lavm;
    .locals 1

    .line 69
    invoke-static {}, Landroidx/databinding/f;->a()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lavm;->a(Landroid/view/View;Ljava/lang/Object;)Lavm;

    move-result-object p0

    return-object p0
.end method
