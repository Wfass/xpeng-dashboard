.class Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$8;
.super Ljava/lang/Object;
.source "ProgramChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->updateHotRanks(Ljava/util/List;)V
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

    .line 450
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$8;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$8;->a:Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;

    invoke-virtual {v0, v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
