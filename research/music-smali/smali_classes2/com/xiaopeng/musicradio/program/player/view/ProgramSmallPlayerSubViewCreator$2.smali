.class Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$2;
.super Ljava/lang/Object;
.source "ProgramSmallPlayerSubViewCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$2;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$2;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->access$100(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;->f()V

    return-void
.end method
