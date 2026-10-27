.class public Lcom/xiaopeng/devtools/view/hwcheck/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImageDispAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/hwcheck/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private PG:Landroid/widget/TextView;

.field private PH:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    const v0, 0x7f090440

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->PG:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f090306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->PH:Landroid/widget/RelativeLayout;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->PG:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/hwcheck/a$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->PH:Landroid/widget/RelativeLayout;

    return-object p0
.end method
