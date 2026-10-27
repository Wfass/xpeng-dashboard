.class public Lbiv$a;
.super Lbii$b;
.source "MsRankDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public o:Lcom/xiaopeng/xui/widget/XImageView;

.field final synthetic p:Lbiv;


# direct methods
.method constructor <init>(Lbiv;Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lbiv$a;->p:Lbiv;

    .line 56
    invoke-direct {p0, p1, p2}, Lbii$b;-><init>(Lbii;Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lbiv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->ms_no:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbiv$a;->o:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method
