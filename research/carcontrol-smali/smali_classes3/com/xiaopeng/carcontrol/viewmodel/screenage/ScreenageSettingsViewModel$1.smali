.class Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;
.super Ljava/lang/Object;
.source "ScreenageSettingsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNraStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->NraSensitivityChanged(I)V

    return-void
.end method

.method public onNraSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->NraSwChanged(Z)V

    return-void
.end method
