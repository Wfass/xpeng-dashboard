.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$7;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$7;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$7;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object v0

    invoke-virtual {v0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method
