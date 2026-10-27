.class public final synthetic Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;->f$0:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;->f$0:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->lambda$showData$1$MsConcentrationFragment(Z)V

    return-void
.end method
