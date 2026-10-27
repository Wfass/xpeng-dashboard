.class public Lcom/xiaopeng/xui/widget/XConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "XConstraintLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XConstraintLayout;->abs:Lcom/xiaopeng/xui/view/a;

    .line 32
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->qV()V

    .line 87
    return-void
.end method
