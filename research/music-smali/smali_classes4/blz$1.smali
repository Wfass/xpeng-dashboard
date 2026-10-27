.class Lblz$1;
.super Ljava/lang/Object;
.source "RdTracksSelectPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lblz;->a(Lblz$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lblz;


# direct methods
.method constructor <init>(Lblz;I)V
    .locals 0

    .line 150
    iput-object p1, p0, Lblz$1;->b:Lblz;

    iput p2, p0, Lblz$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lblz$1;->b:Lblz;

    iget-object p1, p1, Lblz;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lblz$1;->b:Lblz;

    iget-object p1, p1, Lblz;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    const/4 v0, 0x0

    iget v1, p0, Lblz$1;->a:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;->a(II)V

    :cond_0
    return-void
.end method
