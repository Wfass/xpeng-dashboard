.class Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$3;
.super Ljava/lang/Object;
.source "ProgramMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$3;->a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$3;->a:Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->openSearch()V

    return-void
.end method
