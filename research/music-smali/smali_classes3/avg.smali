.class public abstract Lavg;
.super Landroidx/databinding/ViewDataBinding;
.source "MineMmusicItemLayoutBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

.field public final d:Lcom/xiaopeng/xui/widget/XConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/common/MusicListLayout;Lcom/xiaopeng/xui/widget/XConstraintLayout;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 25
    iput-object p4, p0, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    .line 26
    iput-object p5, p0, Lavg;->d:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;)Lavg;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_mmusic_item_layout:I

    invoke-static {p1, p0, v0}, Lavg;->a(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lavg;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lavg;
    .locals 1

    .line 69
    invoke-static {}, Landroidx/databinding/f;->a()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lavg;->a(Landroid/view/View;Ljava/lang/Object;)Lavg;

    move-result-object p0

    return-object p0
.end method
