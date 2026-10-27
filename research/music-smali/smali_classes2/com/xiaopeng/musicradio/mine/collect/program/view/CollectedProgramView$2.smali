.class Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$2;
.super Ljava/lang/Object;
.source "CollectedProgramView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-static {}, Latr;->c()V

    const-string p1, "/mine/activity/collect/program"

    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Lbni;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
