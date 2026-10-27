.class Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;
.super Ljava/lang/Object;
.source "MainSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->access$100(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;->a(I)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;->a:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->setIndex(I)V

    return-void
.end method
