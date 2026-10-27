.class Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$2;
.super Ljava/lang/Object;
.source "BaseSubListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$2;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$2;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
