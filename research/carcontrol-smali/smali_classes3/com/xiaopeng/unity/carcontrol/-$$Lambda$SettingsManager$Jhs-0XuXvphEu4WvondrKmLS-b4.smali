.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Jhs-0XuXvphEu4WvondrKmLS-b4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Jhs-0XuXvphEu4WvondrKmLS-b4;->f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Jhs-0XuXvphEu4WvondrKmLS-b4;->f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->lambda$observeData$41$SettingsManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V

    return-void
.end method
