.class Lcom/xiaopeng/unity/carcontrol/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/AccountManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/AccountManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountHabitListChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitList"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    const-string v1, "onAccountHabitListChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->access$300(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAccountUserInfoChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    const-string v1, "onAccountUserInfoChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->access$200(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHabitGroupStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onHabitGroupStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->access$500(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHabitRestoreIconStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldShowIcon"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "onHabitRestoreIconStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->access$600(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onOwnerAccountChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AccountManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/AccountManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onOwnerAccountChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/AccountManager;->access$400(Lcom/xiaopeng/unity/carcontrol/AccountManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
