.class public abstract Lavu;
.super Landroidx/databinding/ViewDataBinding;
.source "PlaylistUserItemLayoutBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/xui/widget/XImageView;

.field public final d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field public final e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field public final f:Lcom/xiaopeng/xui/widget/XTextView;

.field public final g:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XRelativeLayout;Lcom/xiaopeng/xui/widget/XTextView;Lcom/xiaopeng/xui/widget/XTextView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 37
    iput-object p4, p0, Lavu;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 38
    iput-object p5, p0, Lavu;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 39
    iput-object p6, p0, Lavu;->e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 40
    iput-object p7, p0, Lavu;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 41
    iput-object p8, p0, Lavu;->g:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;)Lavu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->playlist_user_item_layout:I

    invoke-static {p1, p0, v0}, Lavu;->a(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lavu;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lavu;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/f;->a()Landroidx/databinding/e;

    move-result-object v0

    invoke-static {p0, v0}, Lavu;->a(Landroid/view/View;Ljava/lang/Object;)Lavu;

    move-result-object p0

    return-object p0
.end method
