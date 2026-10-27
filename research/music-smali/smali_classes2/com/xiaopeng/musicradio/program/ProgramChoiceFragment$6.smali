.class Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$6;
.super Ljava/lang/Object;
.source "ProgramChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->initMultiType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$6;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$6;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->access$600(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    .line 254
    new-instance p1, Lash$e;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lash$e;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    return-void
.end method
