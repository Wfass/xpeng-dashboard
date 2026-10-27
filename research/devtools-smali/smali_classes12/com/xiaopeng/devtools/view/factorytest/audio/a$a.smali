.class public Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AudioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private Gl:Landroid/widget/TextView;

.field private Gm:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    const v0, 0x7f09043f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->Gl:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->Gm:Landroid/widget/RelativeLayout;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->Gl:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/audio/a$a;->Gm:Landroid/widget/RelativeLayout;

    return-object p0
.end method
