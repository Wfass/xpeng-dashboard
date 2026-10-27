.class Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;
.super Ljava/lang/Object;
.source "LluSayHiControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvasSayHiSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onAvasSayHiSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->access$300(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluLockingEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluLockingEffectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->access$500(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluPreviewStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluPreviewStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSayHiEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluSayHiEffectChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->access$400(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSyaHiSwChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluSyaHiSwChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->access$200(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
