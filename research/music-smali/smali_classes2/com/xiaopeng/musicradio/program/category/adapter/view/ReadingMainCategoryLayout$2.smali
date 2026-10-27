.class Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout$2;
.super Ljava/lang/Object;
.source "ReadingMainCategoryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;->setLoadingState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout$2;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout$2;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;->access$200(Lcom/xiaopeng/musicradio/program/category/adapter/view/ReadingMainCategoryLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V

    return-void
.end method
