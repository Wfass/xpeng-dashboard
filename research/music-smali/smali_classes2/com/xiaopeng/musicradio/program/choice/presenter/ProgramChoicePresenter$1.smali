.class Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;
.super Ljava/lang/Object;
.source "ProgramChoicePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    return-void
.end method
