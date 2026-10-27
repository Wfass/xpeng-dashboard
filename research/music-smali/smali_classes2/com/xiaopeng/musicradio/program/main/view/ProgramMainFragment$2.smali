.class Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;
.super Ljava/lang/Object;
.source "ProgramMainFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;->a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;->a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->access$200(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;->a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->openSearch()V

    :cond_0
    return-void
.end method
