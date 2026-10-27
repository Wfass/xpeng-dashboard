.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;->f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    iput-object p2, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;->f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->lambda$setAndPlayLluEffect$7$LluSayHiControlManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method
