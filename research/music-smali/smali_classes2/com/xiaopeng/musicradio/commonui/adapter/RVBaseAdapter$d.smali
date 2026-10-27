.class public Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 326
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->c:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->c:I

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    :cond_0
    return-void
.end method
