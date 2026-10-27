.class public Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;
.super Ljava/lang/Object;
.source "BaseMultiTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->b:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->c:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    if-eqz p1, :cond_0

    .line 136
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->c:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->b:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;->a(II)V

    :cond_0
    return-void
.end method
