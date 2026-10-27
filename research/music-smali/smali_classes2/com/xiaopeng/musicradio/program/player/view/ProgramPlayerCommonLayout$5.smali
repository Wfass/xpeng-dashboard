.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$5;
.super Ljava/lang/Object;
.source "ProgramPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$5;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$5;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->access$1000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->c()V

    .line 166
    invoke-static {}, Lblk;->q()V

    return-void
.end method
