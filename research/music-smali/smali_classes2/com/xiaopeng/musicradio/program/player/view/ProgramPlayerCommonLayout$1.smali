.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$1;
.super Ljava/lang/Object;
.source "ProgramPlayerCommonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setView()V
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

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    const-string v0, "ProgramPlayerCommonLayo"

    const-string v1, "run: ==========createListView"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
